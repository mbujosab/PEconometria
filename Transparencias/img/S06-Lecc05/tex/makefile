%.pdf : %.tex
	pdflatex $<
	rm $(basename $<).aux
	rm $(basename $<).log

%.png : %.pdf
	pdftoppm -r 500 $< $@ -png
	mv $@-1.png ../$(basename $@).png
	#mv $@-1.png ../png/$(basename $@).png

tex_FILES := $(wildcard *.tex)
png_FILES := $(tex_FILES:.tex=.png)

pngs: $(png_FILES)

pdfs:
	latexmk -pdf
	latexmk -c
