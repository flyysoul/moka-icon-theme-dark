#!/bin/bash

# Check for existence of icontool
echo 'This script requires the "icontool" package.'
echo 'Checking if installed...'
if [ -e /usr/bin/icontool-map ]; then
    echo '"icontool" is installed, proceeding... '
else
    echo '"icontool" is not installed.'
    echo 'Installing... '
    echo 'Requires root privileges:'
    sudo apt-get install -y icontool
    echo 'Done. '
fi

#Enter main directory
cd Moka-Dark

# Generate symlinks for 16x16 icons
echo 'Generating symlinks for 16x16 pixel icons.'
cd 16x16
icontool-map -c actions
icontool-map -c apps
icontool-map -c categories
icontool-map -c devices
icontool-map -c mimetypes
icontool-map -c places
icontool-map -c status
cd ..
echo 'Done.'

# Generate symlinks for 22x22 icons
echo 'Generating symlinks for 22x22 pixel icons.'
cd 22x22
icontool-map -c actions
icontool-map -c apps
icontool-map -c categories
icontool-map -c devices
icontool-map -c mimetypes
icontool-map -c places
icontool-map -c status
cd ..
echo 'Done.'

# Generate symlinks for 24x24 icons
echo 'Generating symlinks for 24x24 pixel icons.'
cd 24x24
icontool-map -c actions
icontool-map -c apps
icontool-map -c categories
icontool-map -c devices
icontool-map -c mimetypes
icontool-map -c places
icontool-map -c status
cd ..
echo 'Done.'

#END
