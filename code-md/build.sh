pandoc "code.md" -o "code.pdf" --from markdown --template eisvogel.tex --listings --pdf-engine "xelatex" -V CJKmainfont="Adobe Heiti Std" -V geometry:margin=.5in