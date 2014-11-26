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

function is_vim_running {
  jobs | grep -o 'vim' &> /dev/null
}

# GIT_PS1_SHOWDIRTYSTATE=true
# GIT_PS1_SHOWUNTRACKEDFILES=true
# GIT_PS1_SHOWUPSTREAM="auto"

PROMPT_INFO="${WHITE}[\A] ${GREEN}\u${WHITE}(${GREEN}\h${WHITE})${NC} ${BLUE}\w"
PROMPT_RUBY="[\$(rbenv version | sed -e 's/ .*//')]"
PROMPT_GIT="${YELLOW}\$(__git_ps1)"
PROMPT_FOOTER="\n\$(is_vim_running && echo \"${RED}\" || echo \"${BLACK}\")↳ ${GREEN}\$ ${NC}"

PS1="\n${PROMPT_INFO} ${PROMPT_RUBY} ${PROMPT_GIT} ${PROMPT_FOOTER}"

## Aliases

alias ls='ls -hF --color=auto'
alias ll='ls -lhF --color=auto'
alias la='ls -lhAF --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='colordiff'
alias mkdir='mkdir -p'
alias df='df -h'
alias du='du -hc'
alias git='LANGUAGE=en_GB git'

alias recent='ls -lhAFt --color=auto'
alias ports='netstat -tulanp'
alias apache2_restart='sudo service apache2 restart'
alias open='xdg-open'

alias hk="heroku"

# Expand aliases with sudo too
alias sudo='sudo '

# Security
alias rm='rm -i --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias psql_admin='sudo su - postgres -c psql'
alias mysql_admin='mysql -u root -proot'

alias rubies='for file in $(find -type f -name ".ruby-version"); do echo "$(cat $file) $(dirname $file)"; done | sort'

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

## Other exports
export DISABLE_AUTO_TITLE=true

## Bash completion
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
  . /etc/bash_completion
fi

## Extract files: depends on zip, unrar and p7zip
function ex {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via ex()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

function ltree()
{
    tree -C $* | less -R
}

# mkdir && cd
function mcd {
  mkdir -p "$1" && cd "$1";
}

function echo_last_migration {
  migrate_path="db/migrate/"
  nth_migration=$((${1:-0}+1))
  echo "${migrate_path}$(ls -1t $migrate_path | head -$nth_migration | tail -1)"
}

function last_migration {
  vim `echo_last_migration $*`
}

function view_coverage {
  report='coverage/index.html'
  if [ -f "$report" ]; then
    xdg-open "$report"
  fi
}

export YII_ENVIRONMENT=DEVELOPMENT
export RAILS_ENVIRONMENT=development

## rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

## heroku
export PATH="/usr/local/heroku/bin:$PATH"

## path
export PATH="$HOME/App/android-sdk/tools:$HOME/App/android-sdk/platform-tools:$PATH"
export PATH="./bin:./node_modules/.bin:$HOME/local/bin:$PATH"
