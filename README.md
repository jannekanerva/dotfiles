# jannekanerva dotfiles

These are my dotfiles. Installation script will install various software and setup the shell to be my style.

It targets macOS systems.

## Package overview

- Fish shell with [functions and aliases](system)
- [Various system packages](install/01_packages.sh) installed with brew or apt-get
- [Various npm packages](install/02_npm.sh)
- [Various desktop packages](install/03_desktop_packages.sh)
- [Configs for some programs](configs)

## Install

:warning: Don't just run these files without first reviewing the code and removing stuff you don't need/want. Running the installation script may break your system. Use at your own risk!

The instalation is designed to be idempotent, meaning it can be run again.

First **install all OS updates**.

On a sparkling fresh installation of macOS

    xcode-select --install

Install font: The Noto Mono for Powerline from https://github.com/powerline/fonts/raw/master/NotoMono/Noto%20Mono%20for%20Powerline.ttf

Install the dotfiles with either Git or curl/wget:

### Clone with Git

    git clone https://github.com/jannekanerva/dotfiles.git ~/.dotfiles
    bash ~/.dotfiles/install.sh

### Remotely install using curl

Alternatively, you can install this into `~/.dotfiles` remotely without Git using curl:

    bash -c "`curl -fsSL https://raw.github.com/jannekanerva/dotfiles/master/remote-install.sh`"

Or, using wget:

    bash -c "`wget -O - --no-check-certificate https://raw.githubusercontent.com/jannekanerva/dotfiles/master/remote-install.sh`"

### Add ssh key to github

`cat $HOME/.ssh/id_rsa.pub`

https://github.com/settings/keys

### Add Fira Code font to editors

Various instructions: https://github.com/tonsky/FiraCode#editor-support

## The `dotfiles` command

    $ dotfiles help
    Usage: dotfiles <command>

    Commands:
    clean            Clean up caches (brew, npm)
    help             This help message
    update           Update packages and pkg managers (brew, brew cask, npm)

## Customize/extend

Custom installation step can be put into `$HOME/.dotfiles_extra/install.sh`. That will be sourced last in the installation.

`$HOME/.dotfiles_extra/runcom/*.fish` will be sources from `config.fish`. You can put your custom settings, such as credentials in there.

## Upgrading to newer macOS

- After the upgrade, run install.sh and check the results.

## Tips for development

### macOS

- Find setting changes via `defaults read > /tmp/before`, make changes via UI, `defaults read > /tmp/after`
  and then `code --diff /tmp/before /tmp/after`

## Credits

Many thanks to the [dotfiles community](https://dotfiles.github.io).
