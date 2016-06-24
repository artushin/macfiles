#!/usr/bin/env bash

# Makes sure we're on the latest version.
brew update
brew upgrade

# Core tools.
brew install zsh
brew install git
brew install git-extras
brew install coreutils

# Network tools.
brew install nmap
brew install iftop

# Development & general tools.
brew install htop
brew install wget
brew install pstree
brew install tree
brew install gcal
brew install cloc
brew install ack

# Libraries.
brew install libffi

# Languages.
brew install go
brew install node
brew install python3
brew install python

# Other programs.
brew install graphviz

# Remove outdated versions from the cellar.
brew cleanup
brew linkapps

