#!/bin/bash

which irssi &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing irssi... "

	if [[ $OSTYPE = *"darwin"* ]]; then
		brew install irssi &> /dev/null
	else
		sudo apt install -y irssi &> /dev/null
	fi

	echo "Done."
fi
