unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
	alias ls='ls --color=auto --group-directories-first'
	alias grep='grep --color=auto'
elif [[ "$unamestr" == 'Darwin' ]]; then
	alias ls='ls -G'
fi

alias ll='ls -lAh'
alias la='ls -A'
alias l='ls -CF'
alias cd..='cd ..'
alias win='nautilus .'
alias q='exit'
alias uz='tar -xvzf'
alias serve='http-server'
alias xampp='sudo /opt/lampp/manager-linux-x64.run'

alias upd='sudo apt update'
alias inst='sudo apt install'
alias cln='sudo apt-get autoremove'

alias gs='git status'
alias st='/opt/sublime_text/sublime_text'
#alias gpu="nvidia-settings -q GPUCoreTemp | grep '0.0' | cut -d':' -f3 | cut -d'.' -f 1"

alias subs='subliminal -l pl --color --'
