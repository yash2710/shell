# Enable tab completion
source ~/git-completion.bash
# set the number of open files to be 1024
ulimit -S -n 1024
export LANG=en_US.UTF-8

# colors!
red="\[\033[0;31m\]"
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$red\h$reset -> $purple\u$green\$(__git_ps1)$blue \W $ $reset\# "
#export PATH=$PATH:/usr/local/sbin
#export PATH=$PATH:/opt/local/bin:/opt/local/sbin:/opt/local/include/libelf
export BUILD_MAC_SDK_EXPERIMENTAL=1
export LC_CTYPE=C
export LANG=C

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
