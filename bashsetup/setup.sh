#!/bin/bash 

#################################################################
# Main Custom bashrc
#################################################################


# check if bashrc already has custom setting include
grep "julian_custom_bashrc" ~/.bashrc > /dev/null
grep_status=$?

BASH_SETUP_ROOT=`pwd`
BASH_CUSTOM_RC_TEMPLATE=$BASH_SETUP_ROOT/julian_custom_bashrc.sh.template
BASH_CUSTOM_RC_FILE=$BASH_SETUP_ROOT/julian_custom_bashrc.sh

# configure setup root in main custom bashrc
sed -e "s:<<<BASH_SETUP_ROOT>>>:$BASH_SETUP_ROOT:g" $BASH_CUSTOM_RC_TEMPLATE > $BASH_CUSTOM_RC_FILE

# add custom bashrc to user bashrc
if [ $grep_status = 1 ]; then
    # add include to end of user bashrc
    echo "" >> $HOME/.bashrc
    echo "# Custom bash setup" >> $HOME/.bashrc 
    echo "source $BASH_CUSTOM_RC_FILE" >> $HOME/.bashrc
    echo "" >> $HOME/.bashrc
fi

##################################################################
# Tmux configuration file
##################################################################

TMUX_CONF_TEMPLATE=$BASH_SETUP_ROOT/tmux.conf.template

sed -e "" $TMUX_CONF_TEMPLATE > tmux.conf
rm -f ~/.tmux.conf
cp tmux.conf ~/.tmux.conf

##################################################################
# Git configuration
##################################################################

GIT_USER_CONFIG=$BASH_SETUP_ROOT/gitconfig

if [ -f $HOME/.gitconfig ]; then
    echo "Removing old gitconfig from home directory"
    rm $HOME/.gitconfig
fi
echo "Linking gitconfig to home dir"
ln -s $GIT_USER_CONFIG $HOME/.gitconfig

echo "Done running setup"
exit 0

