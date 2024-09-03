# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Default Settings
# ---------------
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth   #ignore duplicate lines starting with space in the history.
shopt -s histappend      #append to the history file, don't overwrite it.

shopt -s checkwinsize    #check the window size after each command.

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)" # make less more friendly for non-text input files


if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion      # enable programmable completion features 
  elif [ -f /etc/bash_completion ]; then              # enable programmable completion features 
    . /etc/bash_completion
  fi
fi


# Custom Settings
# ---------------

# envrionment variables
#function setenv() { export "$1=$2"; }
#source ~/.config/env
export $(envsubst < ~/.config/env)


# more bash settings
if [ -f $XDG_CONFIG_HOME/bash/bashrc ]; then
    source $XDG_CONFIG_HOME/bash/bashrc
fi

# local bash settings
if [ -f ~/bashrc.local ]; then
    source ~/bashrc.local
fi

