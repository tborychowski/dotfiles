#!/bin/bash

if [ ! -d $HOME/bin/zsh/ ]; then
    echo "~/bin/zsh not found."
    exit 1
fi

git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/bin/zsh/oh-my-zsh

# Install bash & zsh rc files
ln -sf $HOME/bin/common/nanorc.sh $HOME/.nanorc
echo -e "[OK] .nanorc"

ln -sf $HOME/bin/bash/bashrc.sh $HOME/.bashrc
echo -e "[OK] .bashrc"

ln -sf $HOME/bin/zsh/zshrc.sh $HOME/.zshrc
echo -e "[OK] .zshrc"

ln -sf $HOME/bin/zsh/theme.sh $HOME/bin/zsh/oh-my-zsh/themes/tom.zsh-theme
echo -e "[OK] tom.zsh-theme"

$HOME/bin/common/install-nano-syntax.sh

echo "Don't forget to install fonts: https://github.com/Lokaltog/powerline-fonts"