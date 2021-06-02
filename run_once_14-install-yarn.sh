#!/bin/bash

which yarn &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing Yarn... "

	npm i -g yarn

	echo "Done."
fi
