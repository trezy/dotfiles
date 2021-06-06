#!/bin/bash

which wget &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing wget... "

	{{ if eq .chezmoi.os "linux" -}}
		sudo apt install -y wget &> /dev/null
	{{ else if eq .chezmoi.os "darwin" -}}
		brew install wget &> /dev/null
	{{ end -}}

	echo "Done."
fi
