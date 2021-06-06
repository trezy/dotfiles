#!/bin/bash


ls ~/Library/Fonts | grep 'Nerd Font' &> /dev/null

if [ $? -ne 0 ]; then
	{{ if eq .chezmoi.os "darwin" -}}
		echo -n "Installing Nerd Fonts... "

		brew tap homebrew/cask-fonts &> /dev/null
		brew install --cask font-hack-nerd-font &> /dev/null

		echo "Done."
	{{ end -}}
fi
