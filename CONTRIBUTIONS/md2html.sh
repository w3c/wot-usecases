#!/bin/sh

### Convert all the MD files into HTML files
for f in *.md
do
  html=`basename $f .md`.html
  ./md2html.pl $f > $html
done

### Here please add [[#include "your-expected.md"]] to the line
### index.html file so that you can include the expected MD file there.

### Then include your expected MD files into the index.html file
#./include.html index.html > index2.html

### Here if there are any problems with the included results within the
### "index2.html" file, please fix them manually.

### After fixing all the problems within the "index2.html" file, please
### rename it to "index.html".
# mv index2.html index.html

