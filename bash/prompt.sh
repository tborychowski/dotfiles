force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  color_prompt=yes
    else
  color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
   function prompt {
     local RESET="\e[0m"
     local BOLD="\e[1m"

     local WHITE="\e[1;97m"
     local BLACK="\e[30m"
     local RED="\e[0;31m"
     local GREEN="\e[0;32m"
     local GREEN2="\e[0;92m"
     local YELLOW="\e[33m"
     local YELLOW2="\e[93m"
     local CYAN="\e[0;36m"
     local GRAY="\e[0;90m"
     local GRAY2="\e[39m"
     local BLUE="\e[0;34m"

     local BLUEBG="\e[44m"
     local BLUEBG2="\e[104m"
     local YELLOWBG2="\e[103m"
     local GREENBG2="\e[102m"
     local GRAYBG="\e[100m"
     local GRAYBG2="\e[47m"

     export PS1="\n${GRAYBG} ${GRAY}${BOLD}${BLUEBG2}${RESET}${BLUEBG2}${BLACK} \w ${BLUE}${BOLD}${RESET} "
   }
   prompt
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto --group-directories-first'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
