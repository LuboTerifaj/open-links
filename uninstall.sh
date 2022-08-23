# The script removes open-links-in-browser.sh related lines from .bashrc file

source constants.sh

echo "Removing scripts and aliases from .bashrc file"

sed -i "/# Open links/d" $HOME/.bashrc
sed -i "\|$SOURCE_SCRIPT|d" $HOME/.bashrc
sed -i "/alias $ALIAS='$FUNCTION_NAME'/d" $HOME/.bashrc

# Remove empty lines at the end of file
sed -i -e :a -e '/^\n*$/{$d;N;ba' -e '}' $HOME/.bashrc

echo "Done"
