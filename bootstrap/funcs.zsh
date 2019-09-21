#!/usr/bin/env zsh

function download_file() {
    if [ ! -d $CACHE_SOURCES_DIR ]; then
        mkdir -p $CACHE_SOURCES_DIR
    fi

    if [ ! -f $CACHE_SOURCES_DIR/$1 ]; then
        wget -O $CACHE_SOURCES_DIR/$1 $2
        if [ $? == 0 ]; then 
            return 1
        fi
    fi

    cp $CACHE_SOURCES_DIR/$1 $PWD/$1
}

