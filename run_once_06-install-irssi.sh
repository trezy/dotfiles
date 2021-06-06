#!/bin/bash

which irssi &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing irssi... "

	{{ if eq .chezmoi.os "linux" -}}
		sudo apt install -y irssi &> /dev/null
	{{ else if eq .chezmoi.os "darwin" -}}
		brew install irssi &> /dev/null
	{{ end -}}

	echo "Done."
fi
