# Readme 👀

No more "Well bummer, I forgot to type `nvm use`"

## Prerequisites:

-   nvm
-   zsh

## Install instructions

### Option 1: Load the script from a separate file

1. Clone this repo (or just download the `nvm-autoswitch.zsh` file)
2. Place the file in a directory of your choice
3. Open your `.zshrc` file
4. Add the following directly after the nvm initialization\* (remember to update the path):
    ```sh
    if [[ -r ~/PATH_TO_FILE/nvm-autoswitch.zsh ]]; then
        source ~/PATH_TO_FILE/nvm-autoswitch.zsh
    else
        echo "⚠️ nvm-autoswitch not found"
    fi
    ```
5. Reload your terminal (or just the config)

### Option 2: Copy the code directly into your `.zshrc`

1. Copy the code from `nvm-autoswitch.zsh`
2. Paste it into your `.zshrc` file directly after the nvm initialization\*
3. Reload your terminal (or just the config)

### \* The nvm initialization is usually something like this:

```sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
```
