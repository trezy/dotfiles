#!/bin/bash

which irssi &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing irssi... "

	brew install irssi &> /dev/null

	echo "Done."
fi
