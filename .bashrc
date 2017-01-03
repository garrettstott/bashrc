#
# ~/.bashrc
#

# If not running interactively, don't do anything
PATH="$PATH:/usr/bin"

[[ $- != *i* ]] && return
force_color_prompt=yes

alias be='bundle exec'
alias dcms='bundle exec rake db:drop db:create db:migrate db:seed'
alias ls='ls --color=auto'

export CHROME=google-chrome
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
export TWILIO_ACCOUNT_SID="AC75f2733a4641cf0a183ed2ff71170e18"
export TWILIO_AUTH_TOKEN="943a5fb6420858662ecaf2d9e229b0ca"
export TWILIO_PHONE_NUMBER="+1 385-236-0336"
export FACEBOOK_APP_ID='715043772002353'
export FACEBOOK_APP_SECRET='6965e29141434f4219cf2a2e8d43a3d2'
export GOOGLE_OAUTH_CLIENT_ID='387130618366-62c48sbhhtvg18149fc0693ikptgi6ou.apps.googleusercontent.com'
export GOOGLE_OAUTH_CLIENT_SECRET='Qve7b0vEWSD6Dc4GaxgvkB1u'

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

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
