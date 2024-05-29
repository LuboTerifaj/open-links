# The script for opening links from a file in a browser

###########
# Constants
###########

CHROME="google-chrome.desktop"
FIREFOX="firefox.desktop"

# Comment out the following line and uncomment the preferred browser to open URLs in it. The preferred browser takes precedence over a default browser.
PREFERRED_BROWSER=""
# PREFERRED_BROWSER=$CHROME
# PREFERRED_BROWSER=$FIREFOX

DEFAULT_BROWSER=`xdg-mime query default x-scheme-handler/http`

###########
# Functions
###########

__open_in_chrome() {       
    while read line; do       
            google-chrome --incognito $line 1>/dev/null 2>/dev/null    
    done <$filePath
}

__open_in_firefox() {       
    i=0    
    while read line; do       
            firefox --private-window $line 1>/dev/null 2>/dev/null
            if [[ $i -eq 0 ]]; then
                sleep 1 # Workaround for the bug in Firefox
                # echo "sleep for 1 sec"
            fi
            i=$((i+1))            
    done <$filePath
}

__open_in_default_browser() {
    if [[ $DEFAULT_BROWSER = $CHROME ]]; then    
        __open_in_chrome    
    elif [[ $DEFAULT_BROWSER = $FIREFOX ]]; then
        __open_in_firefox
    else 
        echo "Your default browser is not supported by this script"
        echo "The defualt browser is set to: $DEFAULT_BROWSER"
        echo "Please set your default browser to Chrome or Firefox"
    fi
}

# Opens URLs from a file in a browser
#
# An argument is required: path to the file.
# The expected format of the file: URLs separated by new lines
open_links() {
    if [[ -z $1 ]]; then
      echo "The argument is missing: The path to the file with URLs"
      return 1
    fi
    filePath=$1

    if [[ $PREFERRED_BROWSER = $CHROME ]]; then
        __open_in_chrome
    elif [[ $PREFERRED_BROWSER = $FIREFOX ]]; then
        __open_in_firefox
    else
        __open_in_default_browser
    fi
}