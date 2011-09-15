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

echo "Done running setup"
exit 0

