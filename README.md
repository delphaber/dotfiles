Delphaber's dotfiles configuration
===============================

Thanks to:

* [Arkham](https://github.com/Arkham)
* [pioneerskies](https://github.com/pioneerskies)

## Prerequisites

1. Generic deps: `brew install bash-completion git multitail most colordiff tree ack`
2. Editor: `brew install vim`
3. Tmux: `brew install tmux reattach-to-user-namespace`
4. Install rbenv

## Installation

1. Fork 
2. Clone your fork into ".dotfiles":  
   `git clone https://github.com/YOURNAME/dotfiles.git ~/.dotfiles`
3. Install:  
   `cd ~/.dotfiles && bash install.sh`
4. Update `[user]` section in `gitconfig` file
5. Edit to suit your needs

This will backup all the dotfiles that you are using in the `~/.dotfiles/backup`
directory and will install in your home symlinks to the dotfiles in the
`~/dotfiles` folder.
