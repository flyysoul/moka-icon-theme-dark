Moka-Dark Icon Theme
====================

Moka-Dark is a supplementary icon theme for Moka. It contains only the icons necessary for light-panelled themes and depends on the main set.

Moka-Dark Icon Theme is distributed under the terms of the GNU GPL v.3.

###Source

The source for Moka Icon Theme can be found at: https://github.com/snwh/moka-icon-theme-dark

You can get it's latest version of each from their git repositories:

    git clone https://github.com/snwh/moka-icon-theme-dark.git

NOTE: Moka is currently in Beta and under heavy development.

###Install

To install from source, run the install script to copy the icons to your home folder. 

    ./INSTALL

Running as root will copy the icon set to  /usr/share/icons to be available system-wide.
    
    sudo ./INSTALL

For Ubuntu and its derivatives, Moka-Dark is available in a PPA, which can be added using:

    sudo add-apt-repository ppa:snwh/moka-icon-theme-daily 

    sudo apt-get update && sudo apt-get install moka-icon-theme-dark

###Uninstall

To uninstall, run the uninstall script to remove the locally installed icons. 

    ./UNINSTALL

Running as root will remove the icon set, if installed, from /usr/share/icons.
    
    sudo ./UNINSTALL

###Modifying the source

To run the provided scripts (and edit icons) you will need:

 * inkscape
 * ruby
 * python3

To render new icons from their source SVG files, run the following:

    ./render-pngs.py

This script will look in the source directories and render the respective icons (provided there are changes).

###Bugs, Issues, Questions, Requests

If you find any bugs or issues with Moka or if you have a question or request, you can visit: https://github.com/snwh/moka-icon-theme-dark/issues or https://launchpad.net/moka-icon-theme

-----------