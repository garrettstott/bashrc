#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
force_color_prompt=yes

alias be='bundle exec'
alias dcms='bundle exec rake db:drop db:create db:migrate db:seed'
alias ls='ls --color=auto'

# >>>>BEGIN ADDED BY CNCHI INSTALLER<<<< #
BROWSER=/usr/bin/google-chrome
EDITOR=/usr/bin/vim
# >>>>>END ADDED BY CNCHI INSTALLER<<<<< #

# Load in the git branch prompt script.
source ~/.git-prompt.sh

reset="\033[0m";
blue="\033[38;5;20m";
cyan="\033[38;5;38m";
green="\033[38;5;35m";
yellow="\033[38;5;227m";
white="\033[38;5;250m";

# Set the terminal title to the current working directory.
PS1="\[\033]0;\w\007\]";
PS1+="\[${yellow}\]\u "; # username
PS1+="\[${cyan}\]\w"; # working directory
PS1+="\[${green}\]\$(__git_ps1)"
PS1+="\[${white}\]\\n$ \[${reset}\]"; # `$` (and reset color)
export PS1;

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source /home/garrettstott/.rvm/scripts/rvm
