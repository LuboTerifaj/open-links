# The script prepares open-links-in-browser.sh for usage
#
# Makes open-links-in-browser.sh executable
# Makes uninstall.sh executable
# Adds scripts and aliases to .bashrc file

source constants.sh

echo "Changing scripts permissions"
chmod 774 open-links-in-browser.sh
chmod 774 uninstall.sh

if [[ `cat $HOME/.bashrc | grep "$SOURCE_SCRIPT"` = "" ]]; then
    echo "Adding script to .bashrc file"
    echo "" >> $HOME/.bashrc
    echo "# Open links" >> $HOME/.bashrc
    echo "$SOURCE_SCRIPT" >> $HOME/.bashrc
else
    echo "Script is already added to the .bashrc file"
fi

if [[ `cat $HOME/.bashrc | grep "$ALIAS"` = "" ]]; then
    echo "Adding alias to .bashrc file"
    echo "alias $ALIAS='$FUNCTION_NAME $FILE_PATH'" >> $HOME/.bashrc
else
    echo "alias \"$ALIAS\" is already added to .bashrc file"
fi

echo "Done"