# PATH shenaningans
export PATH="/usr/local/sbin:/usr/local/bin:/usr/local/share/python:$PATH"

# load up rbenv
[ -f `which rbenv` ] && eval "$(rbenv init -)"

# add binstubs folder to path
export PATH="./bin:$PATH"

# load .bashrc
source $HOME/.bashrc
