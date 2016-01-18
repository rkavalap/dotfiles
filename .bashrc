# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#alias rm='rem'
#alias rm='rm -i'
alias vi='vim'
alias ls='ls --color -h -al'
alias ll='ls -al'
alias h=history
alias c='clear'
alias cls='clear'
alias dir='ls'
alias onyx='ssh -Y onyx.boisestate.edu'
alias gdb='gdb -q'

# Default file mask (no write access except for owner)
umask 022

export CLASSPATH=.:$CLASSPATH

LD_LIBRARY_PATH=$HOME/lib:.:lib/:../lib:/usr/lib/:/usr/local/lib/ 
export LD_LIBRARY_PATH

export PATH=$PATH:.

export INFOPATH=/usr/local/share/info:/usr/local/info:/usr/share/info

export TEXINPUTS=.:/usr/share/texmf//

TRASHPATH=$HOME/.Trash
export TRASHPATH

#export TEXINPUTS=/usr/share/texmf/tex/latex

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# don't add unnecessary commands to history
export HISTIGNORE="&:ls:[bf]g:c:cd:exit:w:vi:cls:rm:onyx"

# append to the history file, don't overwrite it
shopt -s histappend

#------------------------------------------------------------------------
# setup for MPICH2
MPICH2_HOME=/usr/local/mpich2
export PATH=$MPICH2_HOME/bin:$PATH
export MANPATH=$MPICH2_HOME/man:$MANPATH
unset MPI_HOST
#------------------------------------------------------------------------



