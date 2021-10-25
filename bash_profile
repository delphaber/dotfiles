# LOCALES
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# add homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# load up rbenv
[ -f `which rbenv` ] && eval "$(rbenv init -)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# add dotfiles bins
export PATH="$HOME/.dotfiles/bin:$PATH"

# add binstubs folder
export PATH="./bin:./exe:.bundle/bin:$PATH"

# add node_modules
export PATH="./node_modules/.bin:$PATH"

# add YARN
export PATH="$(yarn global bin):$PATH"

# add kegonly paths
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export PATH="/usr/local/opt/postgresql@11/bin:$PATH"
export PATH="/usr/local/opt/redis@5.0/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/elasticsearch@5.6/bin:$PATH"

# erlang
export ERL_AFLAGS="-kernel shell_history enabled"

# android
export ANDROID_SDK_ROOT="/Users/$(whoami)/Library/Android/sdk"
export PATH=$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/tools:$PATH

# ruby-build rbenv
# export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# load iterm2 integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# load .bashrc
source $HOME/.bashrc
