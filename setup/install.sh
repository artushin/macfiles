#!/usr/bin/env bash

sh ./osx.sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sh ./brew.sh
sh ./casks.sh

sh ./dotfiles.sh
sh ./prefs.sh

