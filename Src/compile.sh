#!/bin/bash
rm -rf *out
lilypond-book --output=$1.out --pdf $1.lytex

cp ./images/*png $1.out
#cp tocloft/* $1.out
cd $1.out
pdflatex $1.tex
pdflatex $1.tex
cp $1.pdf ..
cd ..
