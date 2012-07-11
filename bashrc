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
PROMPT_RUBY="[\$(~/.rvm/bin/rvm-prompt)]"
PROMPT_GIT="${YELLOW}\$(__git_ps1)"
PROMPT_FOOTER="\n${BLACK}↳ ${GREEN}\$ ${NC}"

PS1="\n${PROMPT_INFO} ${PROMPT_RUBY} ${PROMPT_GIT} ${PROMPT_FOOTER}"

## Aliases
alias recent="ls -lAt | head"
alias ls="ls -hF --color=auto"
alias la="ls -lA --color=auto"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias grep="grep --color=auto"
alias df="df -h"
alias du="du -hs"

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
HISTSIZE=10000
HISTFILESIZE=10000
HISTCONTROL="ignoreboth"

## Editor
EDITOR="/usr/bin/vim"

## Bash completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

## Colored manpages
LESS_TERMCAP_mb=$'\E[01;31m'
LESS_TERMCAP_md=$'\E[01;31m'
LESS_TERMCAP_me=$'\E[0m'
LESS_TERMCAP_se=$'\E[0m'
LESS_TERMCAP_so=$'\E[01;44;33m'
LESS_TERMCAP_ue=$'\E[0m'
LESS_TERMCAP_us=$'\E[01;32m'

## RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

## Bashmarks
source "$HOME/.dotfiles/bundle/bashmarks/bashmarks.sh"

## Path
PATH="$PATH:$HOME/.rvm/bin:$HOME/bin:$HOME/App/android-sdk/tools:$HOME/App/android-sdk/platform-tools"

## Custom functions
function trebox_outside() {
    ssh -p 8532 3box.delphaber.com;
}

function trebox_inside() {
    ssh -p 8532 192.168.1.2;
}

function transbox() {
    ssh -p 8532 -L 9091:127.0.0.1:9091 3box.delphaber.com;
}
