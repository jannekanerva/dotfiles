# Copy pwd to clipboard

alias cpwd="pwd|tr -d '\n'|pbcopy"

# Shortcuts

alias gg="$DOTFILES_GIT_GUI"

# Recursively remove Apple meta files

alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"
alias cleanupad="find . -type d -name '.AppleD*' -ls -delete"


# Git
alias ga="git add"
alias gd="git diff"
alias gco="git checkout"
alias gpsup="git push --set-upstream origin (git_current_branch)"
alias gp="git push"
alias gl="git pull"
alias gm="git merge"
alias gb="git branch"
alias gst="git status"
