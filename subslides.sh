#!/bin/zsh
	for i in {1,2,3,4,5,6}; do
		python wiki2beamer/wiki2beamer.py slides-0$i.txt > slides-0$i.tex
	done


