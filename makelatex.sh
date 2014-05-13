#!/bin/bash

mkdir latex

pandoc --from=markdown --to=latex --chapters README.md introduktion.md fordelar.md sverige.md komigang.md teknikplattformar.md faq.md > latex/chapters.tex
cp -r vitbok.tex bilder latex/

cd latex

pdflatex vitbok >/dev/null 2>&1
pdflatex vitbok >/dev/null 2>&1
pdflatex vitbok >/dev/null 2>&1
