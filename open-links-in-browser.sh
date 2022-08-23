# The script for opening links from a file in a browser

source constants.sh

DEFAULT_BROWSER=`xdg-mime query default x-scheme-handler/http`

__open_in_chrome() {       
    while read line; do       
            google-chrome --incognito $line 1>/dev/null 2>/dev/null    
    done <$FILE_NAME    
}

__open_in_firefox() {       
    i=0    
    while read line; do       
            firefox --private-window $line 1>/dev/null 2>/dev/null
            if [[ $i -eq 0 ]]; then
                sleep 1 # Workaround the bug on Firefox
                # echo "sleep for 1 sec"
            fi
            i=$((i+1))            
    done <$FILE_NAME    
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

open_links() {
    if [[ $PREFFERED_BROWSER = $CHROME ]]; then
        __open_in_chrome
    elif [[ $PREFFERED_BROWSER = $FIREFOX ]]; then
        __open_in_firefox
    else
        __open_in_default_browser
    fi
}



