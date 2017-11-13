#! /bin/bash

### prerequisite ###
# sudo npm install resume-cli -g
# sudo npm install jsonresume-theme-slick -g
# sudo npm install html-minifier -g
### prerequisite ###

resume export gen.html --theme kendall
sed -i '' 's/>pat@/>pat[at]/' gen.html
sed -i '' 's#http://#https://#g' gen.html
html-minifier --case-sensitive --html5 --remove-comments --remove-tag-whitespace --minify-css --collapse-whitespace --sort-attributes --sort-class-name gen.html -o index.html
rm gen.html
