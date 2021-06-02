#!/bin/bash

nvm current &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing Node... "

	# Ensure nvm is loaded
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

	nvm install node

	echo "Done."
fi
