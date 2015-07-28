#!/bin/bash
#FILES=/Users/emmajane/Git/1234000002182/images/diagrams-source/*.svg
FILES=*.svg
for f in $FILES
do
  echo "Processing $f ..."
  # take action on each file. $f store current file name
  /Applications/Inkscape.app/Contents/Resources/bin/inkscape -D --export-width=1024 -y 1.0 --export-png ../diagrams/$f.png $f
  echo "Renaming file $f.png ..."
  mv "../diagrams/$f.png" "../diagrams/gft_${f/.svg/}.png"
  
  /Applications/Inkscape.app/Contents/Resources/bin/inkscape -y 1.0 --export-pdf ../diagrams-pdf/$f.pdf $f
  echo "Renaming file $f.pdf ..."
  mv "../diagrams-pdf/$f.pdf" "../diagrams-pdf/gft_${f/.svg/}.pdf"
done
