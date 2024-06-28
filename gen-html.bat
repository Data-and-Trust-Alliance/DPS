pandoc --standalone --metadata title="Data & Trust Alliance Data Provenance Standards" -r gfm --css=style.css -w html -o dps.html specification.md
pause

pandoc -r gfm -w plain -o dps.txt specification.md
pause

REM pandoc can't convert the SVG graphics alone.
REM pandoc dps.html -o dps.pdf

