#!/bin/bash

#mkdir $HOME/bin

# Install dotfiles
cp ./_bashrc $HOME/.bashrc
echo -e "[OK] .bashrc"

cp ./_nanorc $HOME/.nanorc
echo -e "[OK] .nanorc"

cp ./_vimrc $HOME/.vimrc
echo -e "[OK] .vimrc"




# install NANO syntax highlighting
cp ./nano-syntax/* $HOME/bin/nano-syntax/

sed '/^include/d' ./_nanorc > $HOME/_nanorc
cd $HOME/bin/nano-syntax
ls *.nanorc | xargs -I {} echo 'include "~/bin/nano-syntax/{}"' >> $HOME/_nanorc
mv $HOME/_nanorc $HOME/.nanorc
echo "[OK] nano syntax highlighting"

