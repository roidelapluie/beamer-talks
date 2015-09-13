default: commit mupdf-presentation

all: commit presentation handout

commit:
	git commit -am 'autocommit'||true

presentation:
	xelatex presentation.tex
	xelatex presentation.tex
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.xwm


handout:
	xelatex handout.tex
	xelatex handout.tex
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.xwm

clean:
	rm -f *.pdf *.aux *.log *.nav *.out *.snm *.toc *.xwm


mupdf-presentation: presentation
	mupdf-x11 presentation.pdf

mupdf-handout: handout
	mupdf-x11 presentation.pdf
