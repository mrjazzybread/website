#!/bin/sh
cd content
wget -O econfig.org $CONFIG
wget -O exwm.org $EXWM_CONFIG
echo "#+SETUPFILE: https://fniessen.github.io/org-html-themes/org/theme-readtheorg.setup" >> config.org
echo -e "* EXWM\n#+INCLUDE: exwm.org" >> econfig.org
cd ..
emacs -Q --script build.el
cp -n images/* public/
sed -i '$ d' ./content/config.org
