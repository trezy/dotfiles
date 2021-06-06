#!/bin/bash

zsh --version &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing zsh... "

	{{ if eq .chezmoi.os "linux" -}}
		sudo apt install -y zsh
	{{ else if eq .chezmoi.os "darwin" -}}
		brew install zsh
	{{ end -}}

	# Set the default shell to zsh
	chsh -s $(which zsh)

	echo "Done."
fi
