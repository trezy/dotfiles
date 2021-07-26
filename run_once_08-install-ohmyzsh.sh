#!/bin/bash

ls ~/.oh-my-zsh &> /dev/null

if [ $? -ne 0 ]; then
	echo -n "Installing Oh My ZSH... "

	sudo sh -c "CHSH=yes RUNZSH=no KEEP_ZSHRC=yes $(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

	# Download the powerlevel10k theme
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

	echo "Done."
fi
