# ==================== Configuración general ====================
EMACS       ?= emacs
SCIMAX_INIT ?= $(HOME)/Software/scimax/init.el
EMACS_BATCH := $(EMACS) --batch --load "$(SCIMAX_INIT)"

LESSONS_DIR   := org-lessons
LESSONS_IMG_DIR := $(LESSONS_DIR)/img
CUADERNOS_DIR := CuadernosElectronicos
PRACT_DIR     := org-pract

# ---- org-lessons: pdf, html, ipynb y slides reveal.js ----
LESSONS_ORG    := $(wildcard $(LESSONS_DIR)/*.org)
LESSONS_PDF    := $(LESSONS_ORG:.org=.pdf)
LESSONS_HTML   := $(LESSONS_ORG:.org=.html)
LESSONS_IPYNB  := $(LESSONS_ORG:.org=.ipynb)
LESSONS_SLIDES := $(LESSONS_ORG:.org=.slides.html)

# ficheros auxiliares que deja la exportación LaTeX
LESSONS_TEXAUX := $(LESSONS_ORG:.org=.tex) $(LESSONS_ORG:.org=.aux) \
                   $(LESSONS_ORG:.org=.log) $(LESSONS_ORG:.org=.out) \
                   $(LESSONS_ORG:.org=.toc)

# ---- CuadernosElectronicos: solo ipynb ----
CUADERNOS_ORG   := $(wildcard $(CUADERNOS_DIR)/*.org)
CUADERNOS_IPYNB := $(CUADERNOS_ORG:.org=.ipynb)

# ---- org-pract: tangle .inp -> ejecutar gretl -> pdf, html ----
PRACT_ORG    := $(wildcard $(PRACT_DIR)/*.org)
PRACT_PDF    := $(PRACT_ORG:.org=.pdf)
PRACT_HTML   := $(PRACT_ORG:.org=.html)
PRACT_STAMPS := $(PRACT_DIR)/.stamps
PRACT_GUIONES := $(PRACT_DIR)/guiones

# directorios de salida que gretl crea junto a cada .org de prácticas
# (mismo nombre que el .org, sin extensión)
PRACT_OUTDIRS := $(PRACT_ORG:.org=)

PRACT_TEXAUX := $(PRACT_ORG:.org=.tex) $(PRACT_ORG:.org=.aux) \
                 $(PRACT_ORG:.org=.log) $(PRACT_ORG:.org=.out) \
                 $(PRACT_ORG:.org=.toc)

.PHONY: all lessons cuadernos pract clean figures

all: lessons cuadernos pract index

lessons:   figures $(LESSONS_PDF) $(LESSONS_HTML) $(LESSONS_IPYNB) $(LESSONS_SLIDES)
cuadernos: $(CUADERNOS_IPYNB)
pract:     $(PRACT_PDF) $(PRACT_HTML)

# ==================== figuras ====================

# Recursive make: el makefile de img/ decide él solo (por timestamps
# .org vs .png) si algo necesita regenerarse. Lo invocamos siempre como
# prerrequisito de las lecciones para no tener que duplicar esa lógica
# aquí.
figures:
	$(MAKE) -C $(LESSONS_IMG_DIR) all

# ==================== org-lessons ====================
# Prerrequisito de orden ("| figures") también en las reglas de patrón,
# por si algún día se invoca "make org-lessons/S01-Lecc01.pdf" a mano
# sin pasar por el target "lessons".
$(LESSONS_DIR)/%.pdf: $(LESSONS_DIR)/%.org | figures
	$(EMACS_BATCH) --eval '(progn (find-file "$<") (org-latex-export-to-pdf))'

$(LESSONS_DIR)/%.html: $(LESSONS_DIR)/%.org | figures
	$(EMACS_BATCH) --eval '(progn (find-file "$<") (org-html-export-to-html))'

$(LESSONS_DIR)/%.ipynb: $(LESSONS_DIR)/%.org | figures
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
$(PRACT_GUIONES):
	mkdir -p $@

$(PRACT_STAMPS):
	mkdir -p $@

$(PRACT_STAMPS)/%.tangled: $(PRACT_DIR)/%.org | $(PRACT_STAMPS) $(PRACT_GUIONES)
	$(EMACS_BATCH) --eval '(progn (find-file "$<") (org-babel-tangle))'
	touch $@

$(PRACT_STAMPS)/%.executed: $(PRACT_STAMPS)/%.tangled $(PRACT_GUIONES)
	$(EMACS_BATCH) --eval '(progn (find-file "$(PRACT_DIR)/$*.org") (org-babel-execute-buffer))'
	touch $@

$(PRACT_DIR)/%.pdf: $(PRACT_STAMPS)/%.executed $(PRACT_GUIONES)
	$(EMACS_BATCH) --eval '(progn (find-file "$(PRACT_DIR)/$*.org") (org-latex-export-to-pdf))'

$(PRACT_DIR)/%.html: $(PRACT_STAMPS)/%.executed $(PRACT_GUIONES)
	$(EMACS_BATCH) --eval '(progn (find-file "$(PRACT_DIR)/$*.org") (org-html-export-to-html))'

clean:
	rm -f $(LESSONS_PDF) $(LESSONS_HTML) $(LESSONS_IPYNB) $(LESSONS_SLIDES)
	rm -f $(LESSONS_TEXAUX)
	find $(LESSONS_DIR) -maxdepth 1 -type d -name '_minted-*' -exec rm -rf {} +
	rm -f $(CUADERNOS_IPYNB)
	rm -f $(PRACT_PDF) $(PRACT_HTML)
	rm -f $(PRACT_TEXAUX)
	find $(PRACT_DIR) -maxdepth 1 -type d -name '_minted-*' -exec rm -rf {} +
	rm -rf $(PRACT_GUIONES)
	rm -rf $(PRACT_STAMPS)
	rm -rf $(PRACT_OUTDIRS)
	$(MAKE) -C $(LESSONS_IMG_DIR) distclean

# ==================== index.org (portada de gh-pages) ====================
INDEX_ORG  := index.org
INDEX_HTML := index.html

.PHONY: index
index: $(INDEX_HTML)

$(INDEX_HTML): $(INDEX_ORG)
	$(EMACS_BATCH) --eval '(progn (find-file "$<") (org-html-export-to-html))'
