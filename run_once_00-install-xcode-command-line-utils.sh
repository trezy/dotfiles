#!/bin/bash

ls /Library/Developer/CommandLineTools &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing Xcode Command Line Utils... "

	xcode-select --install

	echo "Done."
fi
