#!/bin/bash

DOTFILES_DIR=".dotfiles"
BACKUP_DIR="backup"
DOTFILES=(
bash_profile
bashrc
curlrc
gemrc
gitattributes
gitconfig
gitignore_global
iex.exs
inputrc
irbrc
psqlrc
rgignore
tmux.conf
rdbgrc.rb
)

function warn() {
  echo "$(tput bold)$(tput setaf 3)  *** ${1}$(tput sgr0)"
}

function link(){
        for script in ${DOTFILES[@]}; do
                dotfile=${HOME}/.${script}
                if [[ -f $dotfile ]]; then
                        warn "~/.${script} already exists"
                else
                        ln -s ${DOTFILES_DIR}/$script $dotfile
                fi
        done
}

function backup(){
        for script in ${DOTFILES[@]}; do
                dotfile=${HOME}/.${script}
                [[ -f $dotfile && ! -L $dotfile ]] || continue;
                backup=${BACKUP_DIR}/${script}
                if [[ -f $backup ]]; then
                        warn "${BACKUP_DIR}/${script} already exists"
                else
                        mv $dotfile $backup
                fi
        done
}

function backup_dir(){
        [[ -d $BACKUP_DIR ]] || mkdir -p $BACKUP_DIR
}

############################################

backup_dir
backup
link

############################################
