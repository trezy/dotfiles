#!/bin/bash

zsh --version &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing tmux... "

	{{ if eq .chezmoi.os "linux" -}}
	sudo apt install -y tmux
	{{ else if eq .chezmoi.os "darwin" -}}
	brew install tmux
	{{ end -}}

	echo "Done."
fi
