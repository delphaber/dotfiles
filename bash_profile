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
# https://thoughtbot.com/blog/git-safe
export PATH=".git/safe/../../bin:$PATH"

# add YARN
export PATH="$(yarn global bin):$PATH"

# add node modules bin
export PATH=".git/safe/../../node_modules/.bin:$PATH"

# add kegonly paths
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/postgresql@15/libexec/bin:$PATH"
export PATH="/usr/local/opt/redis@6.2/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# mix escripts
export PATH="$HOME/.mix/escripts:$PATH"

# erlang
export ERL_AFLAGS="-kernel shell_history enabled"

# ruby-build rbenv
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)" # as suggested in ruby-build wiki
export RUBYOPT='-W:deprecated'
export FARADAY_DEPRECATE='warn'

# fix for mac os problems
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# load .bashrc
source $HOME/.bashrc
