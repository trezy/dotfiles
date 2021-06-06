#!/bin/bash

which tmuxinator &> /dev/null

if [ $? -ne 0 ]; then
	{{ if eq .chezmoi.os "darwin" -}}
		echo -n "Installing Tmuxinator... "

		brew install tmuxinator &> /dev/null

		echo "Done."
	{{ end -}}
fi
