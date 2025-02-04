#!/bin/sh
cd content
wget -O econfig.org $CONFIG
echo "#+SETUPFILE: https://fniessen.github.io/org-html-themes/org/theme-readtheorg.setup" >> config.org
cd ..
emacs -Q --script build.el
cp -n images/* public/
sed -i '$ d' ./content/config.org
