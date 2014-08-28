#!/bin/bash

# Install bash, zsh & rc files
ln -sf $HOME/bin/common/nanorc.sh $HOME/.nanorc
echo -e "[OK] .nanorc"

ln -sf $HOME/bin/common/vimrc.sh $HOME/.vimrc
echo -e "[OK] .vimrc"

ln -sf $HOME/bin/bash/bashrc.sh $HOME/.bashrc
echo -e "[OK] .bashrc"

$HOME/bin/common/install-nano-syntax.sh

