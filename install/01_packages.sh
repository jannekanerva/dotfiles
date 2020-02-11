#!/usr/bin/env bash

if ! is-executable brew; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

# Install packages

apps=(
  bats
  coreutils
  ffmpeg
  findutils
  fish
  git
  git-extras
  gnu-sed
  gnu-tar
  grep
  htop
  httpie
  jq
  nano
  peco
  pipenv
  python
  screen
  shellcheck
  ssh-copy-id
  tree
  unar
  watch
  wget
  zlib  # for pyenv to be able to build python versions
)

brew install "${apps[@]}"

brew cleanup

export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`
set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"

export DOTFILES_BREW_PREFIX_GNU_SED=`brew --prefix gnu-sed`
set-config "DOTFILES_BREW_PREFIX_GNU_SED" "$DOTFILES_BREW_PREFIX_GNU_SED" "$DOTFILES_CACHE"

export DOTFILES_BREW_PREFIX_GNU_TAR=`brew --prefix gnu-tar`
set-config "DOTFILES_BREW_PREFIX_GNU_TAR" "$DOTFILES_BREW_PREFIX_GNU_TAR" "$DOTFILES_CACHE"

export DOTFILES_BREW_PREFIX_GNU_GREP=`brew --prefix grep`
set-config "DOTFILES_BREW_PREFIX_GNU_GREP" "$DOTFILES_BREW_PREFIX_GNU_GREP" "$DOTFILES_CACHE"

export DOTFILES_BREW_PREFIX=`brew --prefix`
set-config "DOTFILES_BREW_PREFIX" "$DOTFILES_BREW_PREFIX" "$DOTFILES_CACHE"

# pyenv
curl https://pyenv.run | bash

# Disable pipenv prompt
set-config "VIRTUAL_ENV_DISABLE_PROMPT" "1" "$DOTFILES_CACHE"
