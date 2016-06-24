#!/usr/bin/env bash

cp Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-setting
cp Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap

wget "https://packagecontrol.io/Package%20Control.sublime-package" -O ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package Control.sublime-package