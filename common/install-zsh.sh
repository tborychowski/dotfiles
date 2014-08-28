#!/bin/bash

if [ ! -d $HOME/bin/zsh/ ]; then
    echo "~/bin/zsh not found."
    exit 1
fi

git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/bin/zsh/oh-my-zsh

ln -sf $HOME/bin/zsh/zshrc.sh $HOME/.zshrc
echo -e "[OK] .zshrc"

echo "Don't forget to install fonts: https://github.com/Lokaltog/powerline-fonts"

