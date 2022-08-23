################################
# Installation scripts constants
################################

# To use a different alias, update the string below.
ALIAS="lunch"

SOURCE_SCRIPT="source $PWD/open-links-in-browser.sh"
FUNCTION_NAME="open_links"


###################################################
# Constants used in open-links-in-browser.sh script
###################################################

# File name placed in the same folder where the script resides, or an absolute path to the file.
# The expected format of the file: URLs separated by the new lines
FILE_NAME="URLs.txt"

CHROME="google-chrome.desktop"
FIREFOX="firefox.desktop"

# Comment out the following line and uncomment the preffered browser to open URLs in it. The preffered browser takes precedence over a default browser.
PREFFERED_BROWSER=""
# PREFFERED_BROWSER=$CHROME
# PREFFERED_BROWSER=$FIREFOX