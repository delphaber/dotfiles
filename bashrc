## Fancy prompt
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\]\[\e[m\]\[\e[1;32m\]$(__git_ps1) \$\[\e[m\] '

## Aliases
alias ls="ls -hFG"
alias la="ls -lA"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias grep="grep --color=auto"
alias red="redpomo"

## Todo
export TODOTXT_DEFAULT_ACTION=ls
alias t="grc todo.sh"
complete -F _todo t

## Shopt options
shopt -s cdspell        # This will correct minor spelling errors in cd command.
shopt -s checkwinsize   # Check window size (rows, columns) after each command.
shopt -s cmdhist        # Save multi-line commands in history as single line.
shopt -s dotglob        # Include dotfile in path-name expansions.
shopt -s histappend     # Append to history rather than overwrite.
shopt -s nocaseglob     # Pathname expansion will be treated as case-insensitive.

## Exports
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL="ignoreboth"
export EDITOR="/usr/local/bin/vim"
export PATH="/Users/arkham/bin:/usr/local/share/python:/usr/local/bin:$PATH"
export WORKON_HOME="/Users/arkham/.envs"

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
source /usr/local/share/python/virtualenvwrapper.sh
has_virtualenv() {
  if [ -e .venv ]; then
    workon `cat .venv`
  fi
}
venv_cd () {
  cd "$@" && has_virtualenv
}
alias cd="venv_cd"

## 3box
function 3box {
  ip=$(ifconfig | grep -A3 '^en1' | tail -1 | cut -d' ' -f2)
  if [[ $ip == "192.168.1.101" ]]; then
    ssh -p 8532 192.168.1.2
  else
    ssh -p 8532 3box.delphaber.com
  fi
}

function transtun {
  ssh -p 8532 3box.delphaber.com -L 9091:192.168.1.2:9091
}


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
