# LOCALES
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# PATH shenaningans
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="$HOME/.cabal/bin:$PATH"
export PATH="$HOME/.dotfiles/bin:$PATH"
export PATH="bin:.bundle/bin:$PATH"

export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"

# load up rbenv
[ -f `which rbenv` ] && eval "$(rbenv init -)"

# load .bashrc
source $HOME/.bashrc
source /Users/juliu/.iterm2_shell_integration.bash
