#!/bin/bash

# first sort out the git inits and updates

git checkout master
git submodule update --init
git submodule foreach --recursive git checkout master

# create vimrc
if [ -e $HOME/.vimrc ]; then
    rm -f $HOME/.vimrc
fi
vimrc_file=`readlink -f vimrc`
ln -s $vimrc_file $HOME/.vimrc

# create gvimrc
if [ -e $HOME/.gvimrc ]; then
    rm -f $HOME/.gvimrc
fi
gvimrc_file=`readlink -f gvimrc`
ln -s $gvimrc_file $HOME/.gvimrc

# link vim directory
if [ -d $HOME/.vim ]; then
    rm -fr $HOME/.vim
fi
echo "Linking `pwd` to \$HOME/.vim"
ln -s `pwd` $HOME/.vim


