#!/bin/bash
xelatex demo1.tex
xelatex demo2.tex
xelatex demo2.tex  # The command should run twice deliberately
rm *.aux *.log *.nav *.out *.snm *.toc
