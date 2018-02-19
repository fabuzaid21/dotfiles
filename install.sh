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

