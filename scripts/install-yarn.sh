#!/bin/bash

$(yarn -v) &> /dev/null

if [ $? -ne 0 ]; then
  echo -n "Installing yarn... "

  if [[ $OSTYPE = *"darwin"* ]]; then
    brew install yarn &> /dev/null
  else
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
    sudo apt-get update && sudo apt-get install --no-install-recommends yarn
  fi
 
  echo "Done."
fi
