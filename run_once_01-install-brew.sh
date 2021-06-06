#!/bin/bash

which brew &> /dev/null

if [ $? -ne 0 ]; then
	{{ if eq .chezmoi.os "darwin" -}}
		echo -n "Installing Homebrew... "

		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"  &> /dev/null

		echo "Done."
	{{ end -}}
fi
