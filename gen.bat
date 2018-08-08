@Echo Off

REM ### prerequisite ###
REM npm install resume-cli -g
REM npm install jsonresume-theme-kendall -g
REM npm install replace -g
REM npm install html-minifier -g

resume export gen.html --theme kendall && ^
replace "http://" "https://" gen.html && ^
replace "manprasatkul@" "manprasatkul[at]" gen.html && ^
html-minifier --case-sensitive --html5 --remove-comments --remove-tag-whitespace --minify-css --collapse-whitespace --sort-attributes --sort-class-name gen.html -o index.html && ^
del gen.html && ^
pause
