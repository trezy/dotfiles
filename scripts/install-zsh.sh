#!/bin/bash

zsh --version &> /dev/null

if [ $? -ne 0 ]; then
  echo -n "Installing zsh... "

  if [ $(which brew) ]; then
    brew install zsh
  elif [ $(which yum) ]; then
    sudo yum install -y zsh
  elif [ $(which apt-get) ]; then
    sudo apt-get install -y zsh
  else
    echo "No suitable installer found. Time to update the zsh installer!"
  fi

  echo "Done."
fi

