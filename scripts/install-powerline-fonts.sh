#!/bin/bash

echo "Installing Powerline fonts... "

git clone https://github.com/powerline/fonts.git &> /dev/null

source fonts/install.sh &> /dev/null

rm -rf fonts/ &> /dev/null

echo "Done."

