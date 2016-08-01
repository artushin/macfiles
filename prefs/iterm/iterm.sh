#!/usr/bin/env bash

defaults write com.apple.terminal StringEncodings -array 4

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

# Install the theme for iTerm
open "itermtheme.itermcolors"
