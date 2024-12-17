#!/bin/sh
emacs -Q --script build.el
cp -n images/* public/
