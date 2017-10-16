# .bash_profile
echo
# print a fortune
#fortune

# print date
date +%A\,\ %e\ %B\ %Y\ %T
echo

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH
