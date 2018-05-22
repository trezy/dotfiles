#!/bin/bash

ls ~/.oh-my-zsh &> /dev/null

if [ $? -ne 0 ]; then
  echo -n "Installing Oh My ZSH... "
  
  sudo sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  
  echo "Done."
fi

