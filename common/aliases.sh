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

alias aptu='sudo apt-get update'
alias apti='sudo apt-get install'
alias aptr='sudo apt-get autoremove'

alias gst='git status'
