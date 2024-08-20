#!/usr/bin/env bash

URL=https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip

echo "[-] downloading FiraCode Nerd Font [-]"
echo "$URL"

wget $URL
unzip FiraCode.zip -d ~/.fonts && rm FiraCode.zip
fc-cache -fv

echo "done!"