# Automated switch to node version defined in `.nvmrc`. Offers to install if version is missing.
#
# Place this after nvm initialization in your ZSH config file.
# Most likely this is `.zshrc` locates in your home folder.
#
# Prerequisites:
#   - nvm
#   - zsh

autoload -U add-zsh-hook
load-nvmrc() {
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"

    if [ -n "$nvmrc_path" ]; then
        local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")
        local nvm_file=$(cat "${nvmrc_path}")

        if [ "$nvmrc_node_version" = "N/A" ]; then
            echo -e "❗️ Node version ${nvm_file} defined in .nvmrc is not installed.\n"
            if read -q "choice?❓ Do you wish to install it? [y/N] "; then
                echo -e "\n✅ Installing...\n"
                nvm install
            else
                echo -e "\n⛔️ Skipping install"
            fi
        elif [ "$nvmrc_node_version" != "$node_version" ]; then
            echo -e "\n🤖 Switching to node version ${nvm_file} defined in .nvmrc\n"
            nvm use  1> /dev/null
        fi
    elif [ "$node_version" != "$(nvm version default)" ]; then
        echo "💡 Reverting to nvm default version"
        nvm use default  1> /dev/null
    fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
# END nvm auto initialization
