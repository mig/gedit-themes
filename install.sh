#!/bin/sh
set -v

STYLE_LOCATION=$HOME/.local/share/gedit/styles/

mkdir -p $STYLE_LOCATION
cp ./*.xml $STYLE_LOCATION
