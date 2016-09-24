# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

alias rm='rm -i -v'
alias vi='vim'
alias h=history
alias c='clear'
alias cls='clear'
alias dir='ls -al'
alias meld='/Applications/Meld.app/Contents/MacOS/Meld'
alias gdb='gdb -q'
alias mv='mv -v'
alias cp='cp -v'
alias where=which
alias hosts='sudo $EDITOR /etc/hosts'


#use coreutils `ls` if possible
hash gls >/dev/null 2>&1 || alias gls="ls"

# always use color, even when piping (to awk,grep,etc)
if gls --color > /dev/null 2>&1; then colorflag="--color"; else colorflag="-G"; fi;
export CLICOLOR_FORCE=1
#
# # ls options: A = include hidden (but not . or ..), F = put `/` after folders, h = byte unit suffixes
alias ls='gls -AFhl ${colorflag} --group-directories-first'
alias lsd='ls -l | grep "^d"' # only directories
# #    `la` defined in .functions
# ###

# Default file mask (no write access except for owner)
umask 022

export CLASSPATH=.:$CLASSPATH

LD_LIBRARY_PATH=$HOME/lib:.:lib/:../lib:/usr/lib/:/usr/local/lib/ 
export LD_LIBRARY_PATH

export ANDROID_HOME=$HOME/Library/Android/sdk
export JAVA_HOME=$(/usr/libexec/java_home)

export PATH=$PATH:.:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$JAVA_HOME/bin

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
export HISTIGNORE="&:ls:[bf]g:c:cd:exit:w:vi:cls:rm:clear:cp"

# append to the history file, don't overwrite it
shopt -s histappend

#------------------------------------------------------------------------
# setup for MPICH2
MPICH2_HOME=/usr/local/mpich2
export PATH=$MPICH2_HOME/bin:$PATH
export MANPATH=$MPICH2_HOME/man:$MANPATH
unset MPI_HOST
#------------------------------------------------------------------------



