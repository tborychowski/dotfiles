#!/bin/bash

mkdir -p $HOME/bin/nano-syntax/

# Install dotfiles
cp ./_bashrc $HOME/.bashrc
echo -e ".bashrc  [OK]"

cp ./_vimrc $HOME/.vimrc
echo -e ".vimrc   [OK]"

cp ./_inputrc $HOME/.inputrc
echo -e ".vimrc   [OK]"



# install NANO with syntax highlighting
cp ./nano-syntax/* $HOME/bin/nano-syntax/
cp ./_nanorc $HOME/.nanorc
cd $HOME/bin/nano-syntax
ls *.nanorc | xargs -I {} echo 'include "~/bin/nano-syntax/{}"' >> $HOME/.nanorc
echo -e ".nanorc  [OK]"

