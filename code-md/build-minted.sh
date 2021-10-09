pandoc -F pandoc-minted -s code.md -o code.tex --toc --toc-depth=4
xelatex --shell-escape code.tex
