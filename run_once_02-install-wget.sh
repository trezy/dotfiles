#!/bin/bash

which wget &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing wget... "

	if [[ $OSTYPE = *"darwin"* ]]; then
		brew install wget &> /dev/null
	else
		sudo apt install -y wget &> /dev/null
	fi

	echo "Done."
fi
