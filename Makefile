all:
	mkdir -p current
	cp templates/presentation.tex current
	cp templates/handout.tex current
	cp templates/Makefile current
	test -f current/variables.tex || touch current/variables.tex
	test -f current/slides.tex || touch current/slides.tex
