#!/bin/bash
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
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

# Notes:
#
# - This script was only tested on Ubuntu 12.04 and Gedit 3.4, but it should
#   work in other linux distros as well.

INSTALL_DIR="$HOME/.local/share/gtksourceview-3.0/styles"

# Print usage instructions of the script
function usage {
cat << EOF
usage: $0 [options]

This script installs the bundled theme styles for gedit.

OPTIONS:
  -h    Shows this message
  -a    Install for all users
EOF
}

# Check if destination directory exists and create it if it doesn't.
# Will return an error code if anything fails, stopping the script execution.
function chkdir {
	if [ ! -d "$INSTALL_DIR" ]; then
		if [[ $INSTALL_DIR = /usr/* ]]; then
			sudo mkdir -p "$INSTALL_DIR" || { return 1; }
		else
			mkdir -p "$INSTALL_DIR" || { return 1; }
		fi
	fi

	return 0
}

# Copy theme files to destination directory 
function cpfiles {
	if [[ $INSTALL_DIR = /usr/* ]]; then
		sudo cp *.xml "$INSTALL_DIR" || { return 1; }
	else
		cp *.xml "$INSTALL_DIR" || { return 1; }
	fi
	
	return 0
}

# Loop through passed arguments
while getopts "ha" OPTION; do
	case $OPTION in
		h)
			usage
			exit 1
			;;
		a)
			INSTALL_DIR="/usr/share/gtksourceview-3.0/styles"
			;;
	esac
done

echo -e "Installing Gedit themes to $INSTALL_DIR\n..."

chkdir
SUCCESS=$?

if [ $SUCCESS -eq 0 ]; then
	cpfiles
	
	if [ $? -eq 0 ]; then
		echo -e "...\nAll done!\n:)"
		exit 0
	else
		echo -e "Unable to copy themes to $INSTALL_DIR\n:("
		exit 1
	fi
else
	echo -e "The destination directory $INSTALL_DIR doesn't exist and I can't create it either!\n:("
	exit 1
fi
