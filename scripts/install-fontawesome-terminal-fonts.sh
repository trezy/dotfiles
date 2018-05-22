#!/bin/bash

ls ~/.fonts &> /dev/null

if [ $? -ne 0 ]; then
  echo -n "Installing FontAwesome terminal fonts... "
  
  git clone https://github.com/gabrielelana/awesome-terminal-fonts.git ~/.fonts &> /dev/null
  
  echo "Done."
fi

