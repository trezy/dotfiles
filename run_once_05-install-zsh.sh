#!/bin/bash

zsh --version &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing zsh... "

	if [[ $OSTYPE = *"darwin"* ]]; then
		brew install zsh
	else
		sudo apt install -y zsh
	fi

	# Set the default shell to zsh
	chsh -s $(which zsh)

	echo "Done."
fi
