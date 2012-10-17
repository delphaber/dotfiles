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

PROMPT_INFO="${BLACK}[\A] ${green}\u${NC} ${BLUE}\w"
PROMPT_RUBY="[\$(~/.rvm/bin/rvm-prompt)]"
PROMPT_GIT="${GREEN}\$(__git_ps1)"
PROMPT_FOOTER="\n\$(jobs | grep -o 'vim' &> /dev/null && echo \"${red}\" || echo \"${BLACK}\")↳ ${GREEN}\$ ${NC}"

PS1="\n${PROMPT_INFO} ${PROMPT_RUBY}${PROMPT_GIT} ${PROMPT_FOOTER}"

## Aliases
alias ls="ls -hFG"
alias la="ls -lA"
alias recent="ls -lAt"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias grep="grep --color=auto"
alias sudo="sudo "
alias apache_start="sudo apachectl -k start"
alias apache_stop="sudo apachectl -k graceful-stop"
alias apache_restart="sudo apachectl -k graceful"

## Shopt options
shopt -s cdspell        # This will correct minor spelling errors in cd command.
shopt -s checkwinsize   # Check window size (rows, columns) after each command.
shopt -s cmdhist        # Save multi-line commands in history as single line.
shopt -s dotglob        # Include dotfile in path-name expansions.
shopt -s histappend     # Append to history rather than overwrite.
shopt -s nocaseglob     # Pathname expansion will be treated as case-insensitive.
stty -ixon              # Disable console start/stop: makes ^S and ^Q go through

## Exports
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL="ignoreboth"
export EDITOR="/usr/local/bin/vim"
export PATH="$HOME/bin:$HOME/.rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/local/share/python:$PATH"
export WORKON_HOME="$HOME/.virtualenvs"
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

## Colored manpages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

## Bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

## RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

## Virtualenv wrapper
has_virtualenv() {
  if [ -e .venv ]; then
    venv=$(cat .venv)
    if [[ $(type -t workon) != "function" ]]; then
      source /usr/local/share/python/virtualenvwrapper.sh
    fi
    if [[ $(basename "$VIRTUAL_ENV") != $venv ]]; then
      workon $venv
    fi
  fi
}
venv_cd () {
  cd "$@" && has_virtualenv
}
alias cd="venv_cd"

## 3box
function 3box_address {
  ssid=$(airport -I | grep -Po "(?<=\bSSID: ).*")
  if [[ $ssid == "allippiti" ]]; then
    echo "192.168.1.2"
  else
    echo "3box.delphaber.com"
  fi
}

function 3box {
  ssh -p 8532 `3box_address`
}

function transtun {
  ssh -p 8532 `3box_address` -L 9091:192.168.1.2:9091
}

## Some random fortune
fortune -s
