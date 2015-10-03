default: commit mupdf-presentation

169: commit mupdf-presentation169

all: commit presentation handout

commit:
	git commit -am 'autocommit'||true

presentation169:
	xelatex 169_presentation.tex
	xelatex 169_presentation.tex
	rm *.aux *.log *.nav *.out *.snm *.toc *.xwm||true

presentation:
	xelatex presentation.tex
	xelatex presentation.tex
	rm *.aux *.log *.nav *.out *.snm *.toc *.xwm||true


handout169:
	xelatex 169_handout.tex
	xelatex 169_handout.tex
	rm *.aux *.log *.nav *.out *.snm *.toc *.xwm||true

handout:
	xelatex handout.tex
	xelatex handout.tex
	rm *.aux *.log *.nav *.out *.snm *.toc *.xwm||true

clean:
	rm *.pdf *.aux *.log *.nav *.out *.snm *.toc *.xwm||true


mupdf-presentation169: presentation169
	mupdf-x11 169_presentation.pdf

mupdf-presentation: presentation
	mupdf-x11 presentation.pdf
