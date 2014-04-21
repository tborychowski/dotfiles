#!/bin/bash

if [ ! -d $HOME/bin/zsh/ ]; then
    echo "~/bin/zsh not found."
    exit 1
fi

git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/bin/zsh/oh-my-zsh

# Install bash & zsh rc files
ln -sf $HOME/bin/common/nanorc.sh $HOME/.nanorc
echo -e "\e[32m[OK]\e[39m .nanorc"

ln -sf $HOME/bin/bash/bashrc.sh $HOME/.bashrc
echo -e "\e[32m[OK]\e[39m .bashrc"

ln -sf $HOME/bin/zsh/zshrc.sh $HOME/.zshrc
echo -e "\e[32m[OK]\e[39m .zshrc"

ln -sf $HOME/bin/zsh/theme.sh $HOME/bin/zsh/oh-my-zsh/themes/tom.zsh-theme
echo -e "\e[32m[OK]\e[39m tom.zsh-theme"



# add nano syntax highlighting
if [ ! -d /usr/share/nano ]; then
    sudo mkdir /usr/share/nano
fi
sudo cp -f $HOME/bin/common/nano-syntax/*.nanorc /usr/share/nano
ls /usr/share/nano/*.nanorc | xargs -I {} echo 'include "{}"' >> $HOME/bin/common/nanorc.sh
echo -e "\e[32m[OK]\e[39m nano syntax highlighting"

echo "Don't forget to install fonts: https://github.com/Lokaltog/powerline-fonts"