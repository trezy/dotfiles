#!/bin/bash

zsh --version &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing tmux... "

	if [[ $OSTYPE = *"darwin"* ]]; then
		brew install tmux
	else
		sudo apt install -y tmux
	fi

	echo "Done."
fi
