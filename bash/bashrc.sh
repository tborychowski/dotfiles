HISTTIMEFORMAT='%b %d %H:%M '
HISTCONTROL=ignoreboth                          # ignoredups : ignorespace
HISTIGNORE="history:exit:lsLls -la:ll:j"        # don't record history for these
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend                     # append to the history file, don't overwrite it
shopt -s checkwinsize                   # update LINES and COLUMNS on window size change
shopt -s dotglob                        # include dotfiles in path expansion
shopt -s cdspell                        # try to correct typos in path
shopt -s nocaseglob                     # correct case typos

bind '"\e[A"':history-search-backward	# use arrows to find history matching entered beginning of cmd
bind '"\e[B"':history-search-forward

PATH="$HOME/bin:$PATH"
source $HOME/bin/bash/prompt.sh
source $HOME/bin/common/aliases.sh

if [ -f /usr/share/autojump/autojump.sh ]
	. /usr/share/autojump/autojump.sh
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
