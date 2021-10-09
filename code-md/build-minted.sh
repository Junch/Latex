#!/bin/bash
pandoc -F pandoc-minted -s code.md -o code.tex --toc --toc-depth=4
sed -i '' 's/\\begin{minted}\[\]{cpp}/\\begin{minted}\[frame=lines,framesep=2mm,baselinestretch=1.2,linenos\]{cpp}/g' code.tex
xelatex --shell-escape code.tex
xelatex --shell-escape code.tex
