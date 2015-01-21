# Themes for Gedit 3

Version 0.3.0

---

This is based on the infamous mig/gedit-themes repository, but since it seems to be stagnant and not accepting pull
requests anymore I decided it was time to make things happen again. This fixes the install script and updates some
themes that looked terrible when the option to highlight the current line was selected.

The install script could use some more testing, but should be fully functional as it is.

## Usage

Download the themes bundle either by clicking the ZIP option at the [GitHub repository](https://github.com/ricardograca/gedit-themes)
or by cloning it with git using the command:

    git clone git://github.com/ricardograca/gedit-themes.git

After it's downloaded, run the included install script to install all the themes for the current user only:

    ./install
    
Pass the `-a` option to the script to install the themes for all users on the system:

    ./install -a

You will need sudo access to install for all users.

## Changelog

### 0.3.0
 - Add Solarized Dark and Light themes (thanks to mattcan)
 - Add usage instructions to README.md

### 0.2.0
 - Completely redesign install script to be more flexible and fail proof

### 0.1.0
 - Replace install script with new one that works with Gedit 3
 - Remove railscasts2 and Rainbow Neon themes
 - Modify some themes that had no defined background color for current-line so that it always looks good
 
## Acknowledgements

This theme bundle is based on the work of Matthew Swasey (mig). Also includes a build script which is heavily inspired
by the installer script of Solarized for Gedit by Matthew Cantelon (mattcan).
