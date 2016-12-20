# LOCALES
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# add homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# load up rbenv
[ -f `which rbenv` ] && eval "$(rbenv init -)"

# add binstubs folder
export PATH="./bin:./exe:.bundle/bin:$PATH"

# add node_modules
export PATH="./node_modules/.bin:$PATH"

# add QT
export PATH="/Users/faber/Qt5.5.1/5.5/clang_64/bin:$PATH"

# load .bashrc
source $HOME/.bashrc

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
