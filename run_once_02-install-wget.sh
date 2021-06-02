#!/bin/bash

which wget &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing wget... "

	brew install wget &> /dev/null

	echo "Done."
fi
