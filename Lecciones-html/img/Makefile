SUBDIRS := $(shell find . -mindepth 1 -maxdepth 1 -type d -printf "%f\n")

.PHONY: clean distclean

all:
	@for d in $(SUBDIRS); do \
	    org=$$(find "$$d" -maxdepth 1 -name '*.org'); \
	    png=$$(find "$$d" -maxdepth 1 -name '*.png' | head -1); \
	    if [ ! -f "$$png" ] || [ "$$org" -nt "$$png" ]; then \
	        echo "Compilando $$org"; \
	        (cd "$$d" && ../compila_figuras.sh "$$(basename "$$org")"); \
	    else \
	        echo "$$d: al día"; \
	    fi; \
	done

clean:
	@for d in $(SUBDIRS); do \
	    echo "Limpiando $$d"; \
	    rm -rf "$$d/tex"; \
	done

distclean:
	@for d in $(SUBDIRS); do \
	    echo "Limpiando $$d"; \
	    find "$$d" -maxdepth 1 -type f ! -name '*.org' -print -delete; \
	    rm -rf "$$d/tex"; \
	done
