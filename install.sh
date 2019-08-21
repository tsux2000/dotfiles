#!/bin/bash

which git > /dev/null 2>&1 || die "Error: Git is not found. Please install Git."

if [[ -e ~/dotfiles ]]; then
    cd ~/dotfiles/
    git pull origin master
else
    git clone --recursive https://github.com/tsux2000/dotfiles.git
    cd ~/dotfiles/
fi

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    ln -sfv ~/dotfiles/$f ~/$f
done
