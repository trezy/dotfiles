#!/bin/bash

ls ~/.vim/bundle/Vundle.vim &> /dev/null

if [ $? -ne 0 ]; then
  echo -n "Installing Vundle... "
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  echo "Done."
  
  echo -n "Installing vim plugins... "  
  vim +PluginInstall +qall
  echo "Done."
fi

