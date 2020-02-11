#!/usr/bin/env bash

# Taps
brew tap 'homebrew/cask'
brew tap 'homebrew/cask-eid'
brew tap 'homebrew/cask-fonts'
brew tap 'homebrew/cask-versions'
brew tap 'homebrew/bundle'

if is-macos; then
  # Install packages

  apps=(
    docker
    firefox
    font-fira-code
    google-chrome
    brave-browser
    insomnia
    iterm2
    maccy
    skitch
    sketch
    spotify
    postgres
    pycharm
    keepassx
    freedome
    textmate
	visual-studio-code
  )

  brew cask install "${apps[@]}"

  # Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
  quick_look_apps=(
    qlcolorcode
    qlstephen
    qlmarkdown
    quicklook-json
    qlimagesize
    webpquicklook
    suspicious-package
    qlvideo
  )

  brew cask install "${quick_look_apps[@]}"

fi

