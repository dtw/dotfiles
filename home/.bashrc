# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
BLUE="\[$(tput setaf 4)\]"
GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"

if [ -n "$SSH_CLIENT" ]; then
        PS1="[@$GREEN\h$RESET $BLUE\W$RESET] $ "
else
        PS1="[$BLUE\W$RESET] $ "
fi

#alias spacman="sudo pacman"
#alias svim="sudoedit"
alias ls="ls --color"
alias wget="wget -t 2 --passive-ftp"
alias ncmpc="ncmpc -e -h $HOSTNAME"
alias tmux="tmux attach -d || tmux new"

MANPATH=$MANPATH
PATH=$HOME/bin:$PATH

export VDPAU_DRIVER=va_gl
export EDITOR="vim"
export SUDO_EDITOR=vim
export QT_XFT=true

# XDG Base Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"


# bash history stuff
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=5000                   # big big history
export HISTFILESIZE=5000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save the history after each command finishes
#export PROMPT_COMMAND="history -a\; $PROMPT_COMMAND"
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history/$HOSTNAME/$USER/$(date "+%Y-%m-%d").log; fi'
complete -cf sudo
complete -cf man

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source "$HOME/.homesick/repos/homeshick/completions/homeshick-completion.bash"
homeshick --quiet refresh
