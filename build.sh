#!/usr/bin/env bash
#
# Author : Rajesh Prashanth <rajeshprasanth@rediffmail.com>
# Date :  Mon May 31 11:07:24 IST 2021
# Purpose : Script to compile musicxml file to lilypond engraved
#           file, pdf ( yet to work mp3 and midi.)
#-----------------------------------------------------------
mkdir -p pdf midi mp3
cd Src
for file in $(basename -s .ly *.ly); do
    lilypond $file.ly
    mv $file.pdf ../pdf
    cp $file.ly ../lilypond
    mv $file.mp3 ../mp3
    mv $file.midi ../midi
    rm -rf *~
done
cd ..
