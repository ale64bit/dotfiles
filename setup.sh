#!/bin/bash

# setup pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# copy dotfiles
cp .vimrc $HOME/.vimrc
cp .ideavimrc $HOME/.ideavimrc
cat .profile >> $HOME/.profile
cp .tmux.conf $HOME/.tmux.conf

# install vim plugins
mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/majutsushi/tagbar
git clone https://github.com/bling/vim-airline
git clone https://github.com/altercation/vim-colors-solarized
git clone https://github.com/airblade/vim-gitgutter
git clone https://github.com/fatih/vim-go
git clone https://github.com/nathanaelkane/vim-indent-guides
# git clone https://github.com/valloric/youcompleteme


