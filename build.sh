#!/bin/sh
cd content
wget -O econfig.org $CONFIG
cd ..
emacs -Q --script build.el
cp -n images/* public/
