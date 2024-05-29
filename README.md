# Open Links 

Open Links contains scripts to open URLs from a file in a browser.

The scripts were developed and tested on Fedora operating system.

## Usage

### Clone the project using git

Consider the location of a project before you clone it. For example, create and use `tools` directory:
- `mkdir -p $HOME/tools`
- `cd $HOME/tools`

Clone it using HTTPS or SSH:
- `git clone https://github.com/LuboTerifaj/open-links.git`
- `cd open-links`

### Configure

You will be using an alias for executing script that opens links from a file.

If you don't want to use a **default alias** (`lunch`), update `ALIAS` constant in `constants.sh` script to a desired name.

Edit `URLs.txt` file with desired links separated by new line, or update `FILE_PATH` constant with your custom file path.
- You can do this also later.

If you want to use your **default browser**, you don't need to change anything.

If you want to use a **specific browser**, set the `PREFERRED_BROWSER` constant in `open-links-in-browser.sh` script.

#### Note
If you make any changes in `constants.sh`, always run the `install.sh` and `.bashrc` scripts.

If you make any changes in `open-links-in-browser.sh`, it is necessary to run `.bashrc` script only or open a new terminal.

See the next point for more information.

### Install

Make the installation script executable and run it:
- `chmod 774 install.sh`
- `./install.sh`

Read and execute `.bashrc` script, or close and open a new terminal.
- `source $HOME/.bashrc`

Be aware that if you change scripts location, you will need to run installation script again or update .bashrc file.

### Use it

From now on you can use your alias (default value is `lunch`) in terminal from any directory to open links from a predefined file.

If you want to use a specific file only once, you can also use `open_links` function (from any directory) with parameter containing a path to the file:
- e.g.: `open_links $HOME/file_with_urls.txt`

### Uninstall

If you don't want to use the script anymore, execute `uninstall.sh` script:
- `./uninstall.sh`

You can now delete the project.