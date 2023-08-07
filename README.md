# Readme 👀

No more "Well bummer, I forgot to type `nvm use`"

## Prerequisites:

- nvm
- zsh

## Install instructions

1. Copy the code from `nvm-autoswitch.zsh`
2. Paste it into your `.zshrc` file directly _after_ 
    ```sh
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
    ```
3. Reload your terminal (or just the config)
4. Enjoy life
