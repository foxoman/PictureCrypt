#!/bin/bash

echo ":: doxygen running"
# Doxygen running
doxygen Doxyfile > doxy.log
# Generate html readme for home page
cd ..
markdown README.md > doxy/home_page/home_page_files/readme.html
# Move generated website to /
mv doxy/home_page/* ./
# Generate pdf from tex
cd latex
make
mv refman.pdf ../refman.pdf
