#! /bin/bash
#
# build_project.sh
# Copyright (C) 2014 gareth <gareth@GDS-Desktop>
#
# Distributed under terms of the MIT license.
#
BUILD="build"
SRC="src"
FILE="python.tex"
PDF="python.pdf"

mkdir -p $BUILD
rm -f $PDF
latexmk -pdf -output-directory=$BUILD $SRC/$FILE
ln -s $BUILD/$PDF
if [ "$1" == "clean" ]
then
  rm -f $PDF
  mv $BUILD/$PDF .
  rm -r $BUILD
fi
if [ "$1" == "cleanest" ]
then
  rm -f $PDF
  rm -r $BUILD
fi
