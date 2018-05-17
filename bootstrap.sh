#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function realpath() {
  echo $(cd "$(dirname "$1")" && pwd)/$(basename "$1");
}





function addSourceablesToBashrc() {
  # Source all the files in /sourceable from .bash_profile
  for i in $(ls -pA ./sourceable | grep -v /); do
    SOURCE_PATH=$(realpath "./sourceable/$i")
    SOURCE_LINE="source $SOURCE_PATH"

    if [ ! $(grep -q "$SOURCE_LINE" ~/.bash_profile) ]; then
      echo "$SOURCE_LINE" >> ~/.bash_profile
    fi
  done
}





function createBashrc() {
  # Create a .bash_profile if we don't already have one
  if [ ! -e ~/.bash_profile ]; then
    touch ~/.bash_profile
    SEPARATOR=""

    i=0
    while [ $i -lt 80 ]; do
      SEPARATOR=$SEPARATOR"#"
      let i=i+1
    done

    echo "$SEPARATOR" >> ~/.bash_profile
    echo "# Dotfiles" >> ~/.bash_profile
    echo "$SEPARATOR" >> ~/.bash_profile
  fi
}





function createFolders() {
  # Create required directories
  for i in '.environments'; do
    mkdir -p "$HOME/$i"
  done
}





function createSymlinks() {
  # Create symlinks from ~ to each file in /symlinkable
  for i in $(ls -A ./symlinkable); do
    SYMLINK_PATH=$(realpath "./symlinkable/$i")

    if [ ! -e ~/$i ]; then
      ln -s $SYMLINK_PATH ~
    fi
  done
}





function handleSingleRunSourceables() {
  # Source all the files in /sourceable/once
  for i in $(ls -pA ./sourceable/once | grep -v /); do
    SOURCE_PATH=$(realpath "./sourceable/once/$i")

    source $SOURCE_PATH
  done
}





function runSetupScripts() {
  # Run all of the setup scripts
  for i in $(ls -pA ./scripts | grep -v /); do
    SOURCE_PATH=$(realpath "./scripts/$i")

    $SOURCE_PATH
  done
}





function doIt() {
  createFolders;

  createSymlinks;

  createBashrc;

  addSourceablesToBashrc;

  handleSingleRunSourceables;

  runSetupScripts;

  source ~/.bash_profile;
}





if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt;
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
fi;
unset doIt;
