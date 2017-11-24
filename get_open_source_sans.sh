#!/bin/bash

## cf from http://programster.blogspot.com/2014/05/ubuntu-14-desktop-install-fira-sans-and.html

cd /tmp || exit

# install unzip just in case the user doesn't already have it.
apt update
apt install unzip -y
wget "https://github.com/adobe-fonts/source-sans-pro/archive/2.020R-ro/1.075R-it.zip" -O ssp.zip
wget "https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip" -O scp.zip
wget "https://github.com/adobe-fonts/source-serif-pro/archive/2.000R.zip" -O ssfp.zip

unzip ssp.zip
unzip scp.zip
unzip ssfp.zip

mkdir -p /usr/share/fonts/opentype/SourceSansPro/
cp source-sans-pro*/OTF/SourceSansPro*.otf /usr/share/fonts/opentype/SourceSansPro/
mkdir -p /usr/share/fonts/opentype/SourceCodePro/
cp source-code-pro*/OTF/SourceCodePro*.otf /usr/share/fonts/opentype/SourceCodePro/
mkdir -p /usr/share/fonts/opentype/SourceSerifPro/
cp source-serif-pro*/OTF/SourceSerifPro*.otf /usr/share/fonts/opentype/SourceSerifPro/

fc-cache -fv
