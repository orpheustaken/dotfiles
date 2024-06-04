#!/bin/sh

mkdir $HOME/.vim

mkdir $HOME/.vim/pack
mkdir $HOME/.vim/undodir

mkdir $HOME/.vim/pack/plugins
mkdir $HOME/.vim/pack/plugins/start
mkdir $HOME/.vim/pack/themes
mkdir $HOME/.vim/pack/themes/start

cd $HOME/.vim/pack/plugins/start

git clone --depth 1 git@github.com:preservim/nerdtree.git
git clone --depth 1 git@github.com:airblade/vim-gitgutter.git
git clone --depth 1 git@github.com:sheerun/vim-polyglot.git

cd $HOME/.vim/pack/themes/start

git clone --depth 1 git@github.com:joshdick/onedark.vim.git
mv onedark.vim/ onedark/

cd $HOME

cp $HOME/Projects/dotfiles/vim/vimrc .
mv vimrc .vimrc

