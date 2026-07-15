# ==================== Configuración general ====================
EMACS       ?= emacs
SCIMAX_INIT ?= $(HOME)/Software/scimax/init.el
EMACS_BATCH := $(EMACS) --batch --load "$(SCIMAX_INIT)"

LESSONS_DIR   := org-lessons
CUADERNOS_DIR := CuadernosElectronicos
PRACT_DIR     := org-pract

# ---- org-lessons: pdf, html, ipynb y slides reveal.js ----
LESSONS_ORG    := $(wildcard $(LESSONS_DIR)/*.org)
LESSONS_PDF    := $(LESSONS_ORG:.org=.pdf)
LESSONS_HTML   := $(LESSONS_ORG:.org=.html)
LESSONS_IPYNB  := $(LESSONS_ORG:.org=.ipynb)
LESSONS_SLIDES := $(LESSONS_ORG:.org=.slides.html)

# ---- CuadernosElectronicos: solo ipynb ----
CUADERNOS_ORG   := $(wildcard $(CUADERNOS_DIR)/*.org)
CUADERNOS_IPYNB := $(CUADERNOS_ORG:.org=.ipynb)

# ---- org-pract: tangle .inp -> ejecutar gretl -> pdf, html ----
PRACT_ORG    := $(wildcard $(PRACT_DIR)/*.org)
PRACT_PDF    := $(PRACT_ORG:.org=.pdf)
PRACT_HTML   := $(PRACT_ORG:.org=.html)
PRACT_STAMPS := $(PRACT_DIR)/.stamps

.PHONY: all lessons cuadernos pract clean

all: lessons cuadernos pract index

lessons:   $(LESSONS_PDF) $(LESSONS_HTML) $(LESSONS_IPYNB) $(LESSONS_SLIDES)
cuadernos: $(CUADERNOS_IPYNB)
pract:     $(PRACT_PDF) $(PRACT_HTML)

# ==================== org-lessons ====================
$(LESSONS_DIR)/%.pdf: $(LESSONS_DIR)/%.org
	$(EMACS_BATCH) --eval '(progn (find-file "$<") (org-latex-export-to-pdf))'

$(LESSONS_DIR)/%.html: $(LESSONS_DIR)/%.org
	$(EMACS_BATCH) --eval '(progn (find-file "$<") (org-html-export-to-html))'

$(LESSONS_DIR)/%.ipynb: $(LESSONS_DIR)/%.org
	$(EMACS_BATCH) --eval \
	  '(progn (require (quote ox-ipynb)) (find-file "$<") (ox-ipynb-export-to-ipynb-file))'

$(LESSONS_DIR)/%.slides.html: $(LESSONS_DIR)/%.ipynb
	cd $(LESSONS_DIR) && jupyter nbconvert \
	    --config ../mycfg-GitHubPages.py \
	    --to slides \
	    --reveal-prefix "https://unpkg.com/reveal.js@5.2.1" \
	    --execute $(notdir $<)

# ==================== CuadernosElectronicos ====================
$(CUADERNOS_DIR)/%.ipynb: $(CUADERNOS_DIR)/%.org
	$(EMACS_BATCH) --eval \
	  '(progn (require (quote ox-ipynb)) (find-file "$<") (ox-ipynb-export-to-ipynb-file))'

# ==================== org-pract ====================
$(PRACT_STAMPS):
	mkdir -p $@

# 1) tangle -> genera los .inp de gretl
$(PRACT_STAMPS)/%.tangled: $(PRACT_DIR)/%.org | $(PRACT_STAMPS)
	$(EMACS_BATCH) --eval '(progn (find-file "$<") (org-babel-tangle))'
	touch $@

# 2) ejecutar las celdas del .org (invocan gretlcli sobre el .inp tangled)
$(PRACT_STAMPS)/%.executed: $(PRACT_STAMPS)/%.tangled
	$(EMACS_BATCH) --eval '(progn (find-file "$(PRACT_DIR)/$*.org") (org-babel-execute-buffer))'
	touch $@

# 3) exportar, ya con figuras/estimaciones generadas por gretl
$(PRACT_DIR)/%.pdf: $(PRACT_STAMPS)/%.executed
	$(EMACS_BATCH) --eval '(progn (find-file "$(PRACT_DIR)/$*.org") (org-latex-export-to-pdf))'

$(PRACT_DIR)/%.html: $(PRACT_STAMPS)/%.executed
	$(EMACS_BATCH) --eval '(progn (find-file "$(PRACT_DIR)/$*.org") (org-html-export-to-html))'

clean:
	rm -f $(LESSONS_PDF) $(LESSONS_HTML) $(LESSONS_IPYNB) $(LESSONS_SLIDES)
	rm -f $(CUADERNOS_IPYNB)
	rm -f $(PRACT_PDF) $(PRACT_HTML)
	rm -rf $(PRACT_STAMPS)
# ==================== index.org (portada de gh-pages) ====================
INDEX_ORG  := index.org
INDEX_HTML := index.html

.PHONY: index
index: $(INDEX_HTML)

$(INDEX_HTML): $(INDEX_ORG)
	$(EMACS_BATCH) --eval '(progn (find-file "$<") (org-html-export-to-html))'
