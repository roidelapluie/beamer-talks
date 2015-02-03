all:
	mkdir -p current
	cp templates/presentation.tex current
	cp templates/handout.tex current
	cp templates/Makefile current
	test -f current/variables.tex || touch current/variables.tex
	test -f current/slides.tex || touch current/slides.tex
	test -e current/beamercolorcurrentinuits.sty || ln -s ../theme/beamercolorthemeinuits.sty current/beamercolorcurrentinuits.sty
	test -e current/beamerinnercurrentinuits.sty || ln -s ../theme/beamerinnerthemeinuits.sty current/beamerinnercurrentinuits.sty
	test -e current/beameroutercurrentinuits.sty || ln -s ../theme/beamerouterthemeinuits.sty current/beameroutercurrentinuits.sty
	test -e current/beamercurrentinuits.sty || ln -s ../theme/beamerthemeinuits.sty current/beamercurrentinuits.sty
	test -e current/contour.sty || ln -s ../theme/contour.sty current/contour.sty

