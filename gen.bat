@Echo Off

REM ### prerequisite ###
REM npm install -g resume-cli jsonresume-theme-kendall replace html-minifier

resume export gen.html --theme kendall && ^
replace "<head>" "<head><link rel='shortcut icon' type='image/x-icon' href='favicon.ico'/>" gen.html && ^
replace "http://" "https://" gen.html && ^
REM replace "manprasatkul@" "manprasatkul[at]" gen.html && ^
REM replace "@manprasatkul" "[AT]manprasatkul" gen.html && ^
html-minifier --case-sensitive --html5 --remove-comments --remove-tag-whitespace --minify-css --collapse-whitespace --sort-attributes --sort-class-name gen.html -o index.html && ^
del gen.html && ^
pause
