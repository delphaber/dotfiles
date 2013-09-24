# LOCALES
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# PATH shenaningans
export PATH="$HOME/.cabal/bin:/usr/local/sbin:/usr/local/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"

# load up rbenv
[ -f `which rbenv` ] && eval "$(rbenv init -)"

# add binstubs folder to path
export PATH="bin:.bundle/bin:$PATH"

# load .bashrc
source $HOME/.bashrc
