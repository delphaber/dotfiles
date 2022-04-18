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

PROMPT_INFO="${white}[\A] ${green}\u@\h:${blue}\w"
PROMPT_RUBY="[\$(rbenv version-name)]"
PROMPT_GIT="${green}\$(__git_ps1)"
PROMPT_FOOTER="\n\$(is_vim_running && echo \"${red}\" || echo \"${white}\") ↳ ${green}\$ ${NC}"

PS1="${PROMPT_INFO} ${PROMPT_RUBY}${PROMPT_GIT} ${PROMPT_FOOTER}"

## Aliases

alias ls='ls -hFG'
alias la='ls -lhAFG'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias mkdir='mkdir -p'
alias df='df -h'
alias du='du -hc'
alias tailf='tail -f'
alias rehash='hash -r'
alias update='brew update && brew upgrade && brew cleanup && heroku autocomplete --refresh-cache'
alias npm_update='npm install npm@latest -g'
alias only_failures='bundle exec rspec spec/ --only-failures'
alias spec='bundle exec rspec spec/'
alias hk='heroku'
alias d='docker'
alias dc='docker-compose'
alias dcr='docker-compose run --rm'
alias dr='docker run --rm -it'
alias vim='nvim'
alias stellare='stellar'

# Expand aliases with sudo too
alias sudo='sudo '

# Security
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias unlink='unlink -i'
alias rename='rename -i'

## Shopt options
shopt -s cdspell        # This will correct minor spelling errors in cd command.
shopt -s checkwinsize   # Check window size (rows, columns) after each command.
shopt -s cmdhist        # Save multi-line commands in history as single line.
shopt -s direxpand      # Allow to type partial directory names..
shopt -s dirspell       # ..and let bash spell them out for you.
shopt -s dotglob        # Include dotfile in path-name expansions.
shopt -s globstar       # Enable recursive globbing with **.
shopt -s histappend     # Append to history rather than overwrite.
shopt -s nocaseglob     # Pathname expansion will be treated as case-insensitive.
stty -ixon              # Disable console start/stop: makes ^S and ^Q go through

## History
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL='ignoreboth'

## Other exports
export EDITOR='/usr/local/bin/nvim'
export PAGER='less'
export RUBY_CONFIGURE_OPTS='--disable-install-doc'
export FZF_DEFAULT_COMMAND='fd --type file'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export LESS='-R'
export PSQL_PAGER="pspg"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export GPG_TTY=$(tty)

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

source ~/.dotfiles/tmuxinator.bash
source `brew --prefix`/etc/profile.d/z.sh
source ~/.config/broot/launcher/bash/br
source "$HOME/.cargo/env"


[ -f ~/.dotfiles/functions ] && source ~/.dotfiles/functions

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# heroku autocomplete setup
# run `heroku autocomplete`
HEROKU_AC_BASH_SETUP_PATH=/Users/faber/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;
