#! /bin/bash

### prerequisite ###
# sudo npm install resume-cli -g
# sudo npm install jsonresume-theme-kendall -g
# sudo npm install replace -g
# sudo npm install html-minifier -g
### prerequisite ###

# https://favicon.io/favicon-generator/

resume export gen.html --theme kendall
replace "<head>" "<head><link rel='shortcut icon' type='image/x-icon' href='favicon.ico'/>" gen.html
replace "http://" "https://" gen.html
replace "manprasatkul@" "manprasatkul[at]" gen.html
html-minifier --case-sensitive --html5 --remove-comments --remove-tag-whitespace --minify-css --collapse-whitespace --sort-attributes --sort-class-name gen.html -o index.html
rm gen.html
