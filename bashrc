## Fancy prompt
red='\[\e[0;31m\]'
RED='\[\e[1;31m\]'
blue='\[\e[0;34m\]'
BLUE='\[\e[1;34m\]'
cyan='\[\e[0;36m\]'
CYAN='\[\e[1;36m\]'
black='\[\e[0;30m\]'
BLACK='\[\e[1;30m\]'
green='\[\e[0;32m\]'
GREEN='\[\e[1;32m\]'
yellow='\[\e[0;33m\]'
YELLOW='\[\e[1;33m\]'
magenta='\[\e[0;35m\]'
MAGENTA='\[\e[1;35m\]'
white='\[\e[0;37m\]'
WHITE='\[\e[1;37m\]'
NC='\[\e[0m\]'

PROMPT_INFO="${WHITE}[\A] ${GREEN}\u${WHITE}(${GREEN}\h${WHITE})${NC} ${BLUE}\w"
PROMPT_RUBY="[\$(rvm-prompt)]"
PROMPT_GIT="${YELLOW}\$(__git_ps1)"
PROMPT_FOOTER="\n${BLACK}↳ ${GREEN}\$ ${NC}"

PS1="\n${PROMPT_INFO} ${PROMPT_RUBY} ${PROMPT_GIT} ${PROMPT_FOOTER}"

## Aliases

# https://wiki.archlinux.org/index.php/Sudo#Passing_aliases
alias sudo='sudo '

# Appereance
alias ls='ls -hF --color=auto'
alias la='ls -lA --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='colordiff'

# Common options
alias mkdir='mkdir -p'
alias df='df -h'
alias du='du -hs'

# Security
alias rm='rm -i --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Cosiness
alias ..='cd ..'
alias ,,='cd -'
alias wget='wget -c'
alias recent='ls -lAt | head'
alias ports='netstat -tulanp'
alias apt-get='sudo apt-get'
alias apache-error='tailf /var/log/apache2/error.log'
alias apache-log='tailf /var/log/apache2/access.log'
alias apache-restart='sudo service apache2 restart'
alias mysql-restart='sudo service mysql restart'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

## Shopt options
shopt -s cdspell        # This will correct minor spelling errors in cd command.
shopt -s checkwinsize   # Check window size (rows, columns) after each command.
shopt -s cmdhist        # Save multi-line commands in history as single line.
shopt -s dotglob        # Include dotfile in path-name expansions.
shopt -s histappend     # Append to history rather than overwrite.
shopt -s nocaseglob     # Pathname expansion will be treated as case-insensitive.

## History
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL="ignoreboth"

## Editor
export EDITOR="vim"

## Bash completion
# UBUNTU
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
  . /etc/bash_completion
# ARCHLINUX
elif [ -f /usr/share/bash-completion/bash_completion ] && ! shopt -oq posix; then
  . /usr/share/bash-completion/bash_completion
  . /usr/share/git/git-prompt.sh
fi

## Colored manpages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

## RVM
if [[ -s "$HOME/.rvm/scripts/rvm" ]]; then
  source "$HOME/.rvm/scripts/rvm"
elif [[ -s "/usr/local/rvm/scripts/rvm" ]]; then
  source "/usr/local/rvm/scripts/rvm"
fi


## Bashmarks
source "$HOME/.dotfiles/lib/bashmarks"

## Rails Completion
source "$HOME/.dotfiles/lib/rails_completion"

## Rake Completion
source "$HOME/.dotfiles/lib/rake_completion"

## Path
PATH="$PATH:$HOME/bin:/usr/local/heroku/bin:$HOME/App/android-sdk/tools:$HOME/App/android-sdk/platform-tools"

## Custom functions

function trebox-hostname() {
  if [[ `iwgetid --raw` == 'allippiti' ]]
    then echo "192.168.1.2"
    else echo "3box.delphaber.com"
  fi
}

function ssh-3box() {
  ssh -p 8532 `trebox-hostname`;
}

function transmission-3box() {
  ssh -p 8532 -L 9091:127.0.0.1:9091 `trebox-hostname`;
}

function sshfs-3box() {
  sshfs -p 8532 `trebox-hostname`:/ /media/3box/
}

function update() {
if uname -a | grep -q '\bUbuntu\b'
  then sudo apt-get update && sudo apt-get upgrade
elif uname -a | grep -q '\bARCH\b'
  then yaourt -Syu --aur
fi
}

#Fix gvim global menu on UBUNTU
function gvim () { (/usr/bin/gvim -f "$@" &) }

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
