#!/bin/bash

ls ~/.nvm &> /dev/null

if [ $? -ne 0 ]; then
  echo -n "Installing nvm... "
  
  wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash &> /dev/null
  
  echo "Done."
fi

