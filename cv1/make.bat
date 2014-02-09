@echo off
title Resume Template

call "./clean.bat"

echo "===============>BEGAIN<==============="
xelatex my_cv_zh.tex

xelatex my_cv_en.tex
echo "================>END<================="