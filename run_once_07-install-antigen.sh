#!/bin/bash

ls ~ | grep antigen.zsh &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing antigen... "

	wget -O ~/antigen.zsh git.io/antigen &> /dev/null

	echo "Done."
fi
