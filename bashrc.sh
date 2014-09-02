HISTTIMEFORMAT='%b %d %H:%M '
HISTCONTROL=ignoreboth                          # ignoredups : ignorespace
HISTIGNORE="history:exit:ls:ls -la:ll"          # don't record history for these
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend             	        # append to the history file, don't overwrite it
shopt -s checkwinsize                   	# update LINES and COLUMNS on window size change
shopt -s dotglob				# include dotfiles in path expansion
shopt -s cdspell				# try to correct typos in path
shopt -s nocaseglob                     	# correct case typos
bind '"\e[A"':history-search-backward		# use arrows to find history matching entered beginning of cmd
bind '"\e[B"':history-search-forward

export TERM=xterm-256color

PATH="$HOME/bin:$PATH"

# Bash completions
set show-all-if-ambiguous on
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
   . /etc/bash_completion
fi

# Alias definitions.
[ -f ~/bin/dotfiles/aliases.sh ] && . ~/bin/dotfiles/aliases.sh
    
# Function definitions.
[ -f ~/bin/dotfiles/functions.sh ] && . ~/bin/dotfiles/functions.sh

# Prompt definitions.
[ -f ~/bin/dotfiles/prompt.sh ] && . ~/bin/dotfiles/prompt.sh
