#!/bin/zsh

omzFolder="$HOME/.oh-my-zsh"
if [ -d $omzFolder ]; then
    customFoler="$omzFolder/custom/themes"
    if [ ! -d $customFoler ]; then
        mkdir -p $customFoler
    fi
    cp ./atom.zsh-theme $customFoler/
    sed -i 's/ZSH_THEME=\".*/ZSH_THEME=\"atom\"/' ~/.zshrc
    echo "Atom installed properly :3"
else
    echo "Oh My Zsh doesn't appear to be installed, or in the wrong folder. Aborting."
fi
