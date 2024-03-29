#!/usr/bin/env zsh

###################################################
# setup main environment variables
###################################################

export ZSH_SETUP_ROOT=/home/julian/.mysetup

export M2_REPO="$HOME/.m2/repository"
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS="-R"

export EDITOR=vim 
export APPS_DIR=$HOME/apps

export PATH=/usr/local/bin:$PATH
export PATH=$ZSH_SETUP_ROOT/bin:$PATH
export PATH=$APPS_DIR/bin:$PATH

export DEBFULLNAME="Julian Kennedy"

export ZLE_RPROMPT_INDENT=0

export DOWNLOAD_KEYSERVER="keyserver.ubuntu.com"

###################################################
# Setup global variables
###################################################

for i in $(ls $ZSH_SETUP_ROOT/env/*.bash); do
    source $i
done

#export POWERLINE_CONFIG_COMMAND=$HOME/.myvim/bundle/powerline/scripts/powerline-config

# set the TERM env variable
export TERM=xterm-256color
if [ -n $TMUX ]; then
    export TERM=xterm-256color
fi

# set some shell paths
export SHELL_BIN_ROOT=$ZSH_SETUP_ROOT/bin

export KEYTIMEOUT=1
# # Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

platform=`uname`


###################################################
#setup global aliases
###################################################

source $ZSH_SETUP_ROOT/global_aliases.zsh


###################################################
# Setup basic shell features
###################################################
#
setopt extended_glob
setopt histignorealldups sharehistory
setopt interactivecomments
setopt autocd autopushd pushdignoredups

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# make sure I can edit my command lines
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -r '^Xe'
bindkey '^Xe' edit-command-line

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b $ZSH_SETUP_ROOT/DIR_COLOURS)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

autoload -U edit-command-line
zle -N edit-command-line 
bindkey -M vicmd v edit-command-line
bindkey '^x^e' edit-command-line
bindkey '^xe' edit-command-line


###################################################
# setup function autoloading 
###################################################

fpath=($ZSH_SETUP_ROOT/funcs $fpath)

# setup my prompt
setopt PROMPT_SUBST
autoload -U colors
colors 

autoload -U colortest
autoload -U spectrum
spectrum

autoload -Uz promptinit
autoload -U prompt_julian_setup
promptinit
prompt julian

################################################################################
# Setup ruby devel environment
# ##############################################################################

# Install ruby gems to user folder
export GEM_HOME=$HOME/.gems
export PATH=$HOME/.gems/bin:$PATH

################################################################################
# General utility functions
################################################################################

autoload -U chpwd
#chpwd_functions=('setup_nodejs')

if [[ $(hostname) != "hash.za.org" ]]; then

fi

#################################################################################
# Setup custom scripts for apps bin directory
#################################################################################



