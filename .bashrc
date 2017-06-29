# RBENV
export PATH=/Users/garrettstott/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export RBENV_SHELL=bash
source '/usr/local/Cellar/rbenv/1.1.0/libexec/../completions/rbenv.bash'
eval export PATH="/Users/garrettstott/.rbenv/shims:${PATH}"
command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(rbenv "sh-$command" "$@")";;
  *)
    command rbenv "$command" "$@";;
  esac
}

# ALIAS
alias be='bundle exec'
alias dcms='bundle exec rake db:drop db:create db:migrate db:seed'
alias sbl='sublime'

# Performance
export TWILIO_ACCOUNT_SID=''
export TWILIO_AUTH_TOKEN=''
export TWILIO_PHONE_NUMBER=''
export FACEBOOK_APP_ID=''
export FACEBOOK_APP_SECRET=''
export GOOGLE_OAUTH_CLIENT_ID=''
export GOOGLE_OAUTH_CLIENT_SECRET=''
export PERF_CRM_MAILER_PASSWORD=''
# PRODUCTION SECRET
export SECRET_KEY_BASE=''
#export PERF_DB_SOCKET=''
#export PERF_DB_PASSWORD=''
#export PERF_DB_HOST=''
export IGNORE_DRUPS=''

# JRUBY
export JRUBY_OPTS='-J-Xmx4G -J-XX:MaxPermSize=2G'

# MYSQL
export MYSQL_PATH=/usr/local/Cellar/mysql/5.7.18
export PATH=$PATH:$MYSQL_PATH/bin

# NPM 
export PATH="/usr/local/share/npm/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# AWS CLI
aws_env() {
  export AWS_DEFAULT_PROFILE=$1
}

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# PS1
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
PS1+="\[${white}\]\\n> \[${reset}\]"; # `$` (and reset color)
export PS1;
