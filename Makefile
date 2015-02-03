all:
	mkdir -p current
	cp templates/presentation.tex current
	cp templates/handout.tex current
	cp templates/Makefile current
	test -f current/variables.tex || touch current/variables.tex
	test -f current/slides.tex || touch current/slides.tex
	test -e current/beamercolorthemeinuits.sty || ln -s ../theme/beamercolorthemeinuits.sty current/beamercolorthemeinuits.sty
	test -e current/beamerinnerthemeinuits.sty || ln -s ../theme/beamerinnerthemeinuits.sty current/beamerinnerthemeinuits.sty
	test -e current/beamerouterthemeinuits.sty || ln -s ../theme/beamerouterthemeinuits.sty current/beamerouterthemeinuits.sty
	test -e current/beamerthemeinuits.sty || ln -s ../theme/beamerthemeinuits.sty current/beamerthemeinuits.sty
	test -e current/contour.sty || ln -s ../theme/contour.sty current/contour.sty


