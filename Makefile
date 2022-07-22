all: build/thesis.pdf build/presentation.pdf


TeXOptions = -lualatex \
			 -interaction=nonstopmode \
			 -halt-on-error \
			 -output-directory=build
                                                                                
build/thesis.pdf: FORCE | build
	latexmk $(TeXOptions) thesis.tex     

build/presentation.pdf: FORCE | build
	latexmk $(TeXOptions) presentation.tex
	
FORCE:

build:
	mkdir -p build/

clean:
	rm -rf build
