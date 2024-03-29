# Delphaber's dotfiles configuration

Thanks to:

- [Arkham](https://github.com/Arkham)
- [pioneerskies](https://github.com/pioneerskies)

## Prerequisites

1.  Install [brew](https://brew.sh/)
2.  Install bash: `brew install bash bash-completion`
2.  Install generic deps: `brew install git git-extras curl`
3.  Editor: `brew install neovim` and vimfiles
4.  Tmux: `brew install tmux reattach-to-user-namespace`
5.  Bash
    ```bash
    echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
    chsh -s /usr/local/bin/bash
    # restart iterm and test
    echo $BASH_VERSION # 5.1.16(1)-release
    ```
6.  Install [nvm](https://github.com/creationix/nvm#install-script)
7.  Install [yarn classic](https://yarnpkg.com/lang/en/docs/install/#mac-stable) - `brew install yarn`
8.  Install [rbenv](https://github.com/rbenv/rbenv#homebrew-on-macos)
9.  Install [fzf](https://github.com/junegunn/fzf)
10. Install [git-delta](https://github.com/dandavison/delta) and a newer version of `less` (`brew install less; brew link less`)
11. Install [bat](https://github.com/sharkdp/bat) - brew install bat
12. Install [ripgrep](https://github.com/BurntSushi/ripgrep#installation) - brew install ripgrep
13. Install [zoxide](https://github.com/ajeetdsouza/zoxide#installation) - brew install zoxide



## Some interesting tools

- [angle-grinder](https://github.com/rcoh/angle-grinder) - brew install angle-grinder
- [dust](https://github.com/bootandy/dust) - brew install dust
- [exa](https://github.com/ogham/exa) - brew install exa
- [heroku](https://devcenter.heroku.com/articles/heroku-cli#download-and-install) - brew tap heroku/brew && brew install heroku
- [hexyl](https://github.com/sharkdp/hexyl) - brew install hexyl
- [httpie](https://github.com/httpie/httpie) - brew install httpie
- [mtr](https://github.com/traviscross/mtr) - brew install mtr
- [pgcli](https://www.pgcli.com/) - brew install pgcli
- [pspg](https://github.com/okbob/pspg)
- [tldr](https://tldr.sh/) - npm install -g tldr
- [fd](https://github.com/sharkdp/fd) - brew install fd

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
