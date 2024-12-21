#!/bin/sh
cd content
wget -O notes.org $NOTES
cd ..
emacs -Q --script build.el
cp -n images/* public/
