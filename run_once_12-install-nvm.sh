#!/bin/bash

ls ~/.nvm &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing nvm... "

	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash &> /dev/null

	echo "Done."
fi
