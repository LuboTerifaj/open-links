# Open Links 

Open Links contains scripts to open URLs from a file in a browser.

The scripts were developed and tested on Fedora operating system.

## Usage

Clone the project using git.

### Configure

Update `ALIAS` constant in `constants.sh` script to a desired name.

Edit `URLs.txt` file with desired links separated by new line, or update `FILE_PATH` constant with your custom file path.

If you want to use a specific browser, set the `PREFFERED_BROWSER` constant in `open-links-in-browser.sh` script.
If you want to use your default browser, don't change anything.

### Install

Make the installation script executable and run it:
- `chmod 774 install.sh`
- `./install.sh`

Read and execute `.bashrc` script, or close and open a new terminal.
- `source $HOME/.bashrc`

Be aware that if you change the scripts location, you will need to also update .bashrc file.

### Use

From now on you can use your alias (default value is `lunch`) in terminal to open links from a file.

### Uninstall

If you don't want to use the script any more, execute `uninstall.sh` script:
- `./uninstall.sh`

You can now delete the project.