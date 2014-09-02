#!/usr/bin/env bash

function prompt {
	local RESET="\[\033[0;00m\]"
	local WHITE="\[\033[0;37m\]"
	local RED="\[\033[1;31m\]"
	local BOLD="\[\033[1m\]"
	
	local BLACK="\e[30m"
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

	#export PS1="\n${GRAYBG} ${GRAY}${BOLD}${BLUEBG2}${RESET}${BLUEBG2}${BLACK} \w ${BLUE}${BOLD}${RESET} "
	export PS1="\n\w${RED}${BOLD}❯ ${RESET}"
}
prompt
