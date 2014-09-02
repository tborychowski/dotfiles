#!/bin/bash

# Install bash, zsh & rc files
ln -sf $HOME/bin/dotfiles/bashrc.sh $HOME/.bashrc
echo -e "[OK] .bashrc"

ln -sf $HOME/bin/dotfiles/nanorc.sh $HOME/.nanorc
echo -e "[OK] .nanorc"

ln -sf $HOME/bin/dotfiles/vimrc.sh $HOME/.vimrc
echo -e "[OK] .vimrc"




# install NANO syntax highlighting
sed '/^include/d' $HOME/bin/dotfiles/nanorc.sh > $HOME/bin/dotfiles/nanorc.tmp
cd $HOME/bin/dotfiles/nano-syntax
ls *.nanorc | xargs -I {} echo 'include "~/bin/dotfiles/nano-syntax/{}"' >> $HOME/bin/dotfiles/nanorc.tmp
mv $HOME/bin/dotfiles/nanorc.tmp $HOME/bin/dotfiles/nanorc.sh
echo "[OK] nano syntax highlighting"

