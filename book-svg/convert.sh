#!/bin/bash
#FILES=/Users/emmajane/Git/1234000002182/images/diagrams-source/*.svg
FILES=*.svg
for f in $FILES
do
  echo "Processing $f ..."
  # take action on each file. $f store current file name
  /Applications/Inkscape.app/Contents/Resources/bin/inkscape -D --export-width=1024 -y 1.0 --export-png rendered/$f.png $f
  echo "Renaming file $f.png ..."
  mv "rendered/$f.png" "rendered-png/gft_${f/.svg/}.png"
  
  /Applications/Inkscape.app/Contents/Resources/bin/inkscape -y 1.0 --export-pdf rendered/$f.pdf $f
  echo "Renaming file $f.pdf ..."
  mv "rendered/$f.pdf" "rendered-pdf/gft_${f/.svg/}.pdf"
done
