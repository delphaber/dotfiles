Delphaber's dotfiles configuration
===============================

Thanks to:

* [Arkham](https://github.com/Arkham)
* [pioneerskies](https://github.com/pioneerskies)

## Prerequisites

 1. Install [brew](https://brew.sh/)
 2. Generic deps: `brew install bat bash-completion git git-extras multitail most colordiff diff-so-fancy tree ack moreutils the_silver_searcher watch wget curl z cloc httpie broot pstree`
 3. Editor: `brew install neovim` and vimfiles
 4. Tmux: `brew install tmux reattach-to-user-namespace`
 5. Bash
      ```bash
      brew install bash
      echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
      chsh -s /usr/local/bin/bash
      # restart iterm and test
      echo $BASH_VERSION # 5.0.2(1)-release
      ```
 6. Install [nvm](https://github.com/creationix/nvm#install-script)
 7. Install [yarn](https://yarnpkg.com/lang/en/docs/install/#mac-stable): `brew install yarn --without-node`
 8. Install [rbenv](https://github.com/rbenv/rbenv#homebrew-on-macos)
 9. Install [fzf](https://github.com/junegunn/fzf#using-homebrew-or-linuxbrew)
10. Install [pspg](https://github.com/okbob/pspg)
11. Install [heroku](https://devcenter.heroku.com/articles/heroku-cli#download-and-install)
12. Install [angle-grinder](https://github.com/rcoh/angle-grinder)

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
