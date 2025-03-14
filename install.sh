#! /usr/bin/env bash

set -x 

CURR_DIR=`pwd`
cd $HOME


ln -sfn ${CURR_DIR}/.bashrc .bashrc.user
ln -sfn ${CURR_DIR}/.zshrc
ln -sfn ${CURR_DIR}/.gdbinit
ln -sfn ${CURR_DIR}/.git-completion.bash
ln -sfn ${CURR_DIR}/.gitconfig
ln -sfn ${CURR_DIR}/.inputrc
ln -sfn ${CURR_DIR}/.pyrc
ln -sfn ${CURR_DIR}/.tmux.conf
ln -sfn ${CURR_DIR}/.sqliterc
ln -sfn ${CURR_DIR}/.ctags
ln -sfn ${CURR_DIR}/.psqlrc

mkdir -p .config/mise # make sure the directory exists before we create the symlink
ln -sfn ${CURR_DIR}/mise-config.toml .config/mise/config.toml

#(crontab -l 2>/dev/null; echo "1 * * * * ctags -R -o ~/tags ~/src") | crontab -
