#!/bin/sh
set -v

install_dir=$HOME/.local/share/gedit/styles
mkdir -p $install_dir
cp ./*.xml $install_dir
