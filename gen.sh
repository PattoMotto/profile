#! /bin/bash

### prerequisite ###
# npm install -g resume-cli jsonresume-theme-kendall replace html-minifier
### prerequisite ###

# THEME https://jsonresume.org/themes/
# Profile page theme https://github.com/XuluWarrior/jsonresume-theme-kards
# https://favicon.io/favicon-generator/

resume export gen.html --theme kendall
replace "<head>" "<head><link rel='shortcut icon' type='image/x-icon' href='favicon.ico'/>" gen.html
replace "http://" "https://" gen.html
# replace "manprasatkul@" "manprasatkul[AT]" gen.html
# replace "@manprasatkul" "[AT]manprasatkul" gen.html
html-minifier --case-sensitive --html5 --remove-comments --remove-tag-whitespace --minify-css --collapse-whitespace --sort-attributes --sort-class-name gen.html -o index.html
rm gen.html
