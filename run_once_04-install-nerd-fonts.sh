#!/bin/bash

ls ~/Library/Fonts | grep 'Nerd Font' &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing Nerd Fonts... "

	brew tap homebrew/cask-fonts &> /dev/null
	brew install --cask font-hack-nerd-font &> /dev/null

	echo "Done."
fi
