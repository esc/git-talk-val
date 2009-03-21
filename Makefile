base = slides

all: $(base).pdf

$(base).pdf: $(base).tex subslides
	pdflatex $(base).tex
	pdflatex $(base).tex

#$(base)-0?.tex: $(base)-0?.txt wiki2beamer/wiki2beamer.py
#	python wiki2beamer/wiki2beamer.py $(wildcard $(base)-0?.txt) > $(wildcard $(base)-0?.tex)

subslides:
	-zsh subslides.sh

#$(base)-02.tex: $(base)-02.txt wiki2beamer/wiki2beamer.py
#	python wiki2beamer/wiki2beamer.py $(base)-02.txt > $(base)-02.tex


wiki2beamer/wiki2beamer.py:
	wget -O wiki2beamer.zip http://downloads.sourceforge.net/sourceforge/wiki2beamer/wiki2beamer.zip
	unzip wiki2beamer.zip
	-rm -f wiki2beamer.zip

clean:
	-rm -vf *.{toc,snm,log,dvi,aux,out,nav}

distclean: clean
	-rm -vf $(base).pdf $(base)-*.tex
