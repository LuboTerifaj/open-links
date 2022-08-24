################################
# Installation scripts constants
################################

# To use a different alias, update the string below.
ALIAS="lunch"

# Path to the file with URLs separated by new lines
FILE_PATH="$PWD/URLs.txt"

SOURCE_SCRIPT="source $PWD/open-links-in-browser.sh"
FUNCTION_NAME="open_links"

################################
# Installation scripts functions
################################

# Removes previously added lines from .bashrc file
__remove_previously_added_lines() {
      if [[ -f $PWD/.added_to_bashrc ]]; then
        echo "Removing scripts and aliases from .bashrc file"
        while read line; do
          sed -i "\|$line|d" $HOME/.bashrc
        done <$PWD/.added_to_bashrc

        # Remove empty lines at the end of file
        sed -i -e :a -e '/^\n*$/{$d;N;ba' -e '}' $HOME/.bashrc

        rm $PWD/.added_to_bashrc
      fi
}