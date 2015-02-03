default: commit mupdf-presentation

all: commit presentation handout

commit:
	git commit -am 'autocommit'||true

presentation:
	xelatex presentation.tex
	xelatex presentation.tex
	rm *.aux *.log *.nav *.out *.snm *.toc *.vrb *.xwm || true


handout:
	xelatex handout.tex
	xelatex handout.tex
	rm *.aux *.log *.nav *.out *.snm *.toc *.vrb *.xwm || true

clean:
	rm *.pdf *.aux *.log *.nav *.out *.snm *.toc *.vrb *.xwm || true


mupdf-presentation: presentation
	mupdf-x11 presentation.pdf

mupdf-handout: handout
	mupdf-x11 presentation.pdf
