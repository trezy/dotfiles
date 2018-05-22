#!/bin/bash

ls ~/.tmux/plugins/tpm &> /dev/null

if [ $? -ne 0 ]; then
  echo -n "Installing tmux Plugin Manager... "
  
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  
  echo "Done."
fi

