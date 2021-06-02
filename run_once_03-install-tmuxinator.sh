#!/bin/bash

which tmuxinator &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing Tmuxinator... "

	brew install tmuxinator &> /dev/null

	echo "Done."
fi
