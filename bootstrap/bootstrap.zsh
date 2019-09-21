#!/usr/bin/env zsh


# setup main environment variables

export ZSH_SETUP_ROOT=/home/julian/.mysetup

export APPS_PATH=$HOME/apps
export APPS_BUILD_PATH=$APPS_PATH/_build

export CACHE_DIR=$HOME/.cache/mysetup
export CACHE_SOURCES_DIR=$CACHE_DIR/sources

zparseopts -D -E -A Args -- u

if (( ${+Args[-u]} )); then 
    UPDATE_ONLY=1
fi



# bring in utility functions

source bootstrap/funcs.zsh

# install necessary packages

sudp apt install vim-scripts vim-gtk htop tree
sudo apt install pbuilder debootstrap devscripts
sudo apt install python3-sh

## build necessary software
#
#if [ ! -d $APPS_BUILD_PATH ]; then 
#    mkdir -p $APPS_BUILD_PATH
#fi
#
#software_to_install=(
#    nodejs
#)
#
#for i in $software_to_install; do
#    source bootstrap/builds/$i
#
#    if [[ -n $UPDATE_ONLY ]]; then 
#        ${i}_postbuild
#    else 
#        ${i}_build
#        ${i}_postbuild
#    fi
#done
#
