
%.pdf:%.ps
	ps2pdf $^
%.ps:%.dvi
	dvips $^
%.dvi:%.tex
	latex $^
	latex $^
all: atomic.pdf  bosonic.pdf  fourier.pdf


public:
	cp *.pdf ~/Dropbox/Public

clean:
	rm *.aux *.log *.dvi *.ps *.out

