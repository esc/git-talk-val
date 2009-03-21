#!/bin/zsh
	for i in {1,2}; do
		python wiki2beamer/wiki2beamer.py slides0$i-.txt > slides-0$i.tex
	done


