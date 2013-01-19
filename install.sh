#!/bin/sh
#
# Copyright (C) 2012 Ricardo Graça
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

# Notes:
#
# - This script was only tested on Ubuntu 12.04 and Gedit 3.4. It won't work on Ubuntu 12.10.
# - A better install script is on its way.

INSTALL_DIR="$HOME/.local/share/gedit/styles"

echo "Installing Gedit themes..."

if [ ! -d "$INSTALL_DIR" ]; then
	mkdir "$INSTALL_DIR"
fi

cp ./*.xml $INSTALL_DIR/.

echo "All done!"
