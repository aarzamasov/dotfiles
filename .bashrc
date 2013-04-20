# If not running interactively, don't do anything
[ -z "$PS1" ] && return

shopt -s cdspell
shopt -s histappend
PROMPT_COMMAND='history -a'


# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"
export HISTFILESIZE=15000

shopt -s cmdhist

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

shopt -u mailwarn
unset MAILCHECK  

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" -a -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi


# Comment in the above and uncomment this below for a color prompt
WHITE='\[\033[1;37m\]'
LIGHTGRAY='\[\033[0;37m\]'
GRAY='\[\033[1;30m\]'
BLACK='\[\033[0;30m\]'
RED='\[\033[0;31m\]'
LIGHTRED='\[\033[1;31m\]'
GREEN='\[\033[0;32m\]'
LIGHTGREEN='\[\033[1;32m\]'
BROWN='\[\033[0;33m\]'
YELLOW='\[\033[1;33m\]'
BLUE='\[\033[0;34m\]'
LIGHTBLUE='\[\033[1;34m\]'
PURPLE='\[\033[0;35m\]'
PINK='\[\033[1;35m\]'
CYAN='\[\033[0;36m\]'
LIGHTCYAN='\[\033[1;36m\]'
NORMAL='\[\033[0m\]'
NNORMAL='\[\033[0;33m\]'

SMILEY="${LIGHTBLUE}:o)${NORMAL}"
FROWNY="${RED}:o(${NORMAL}"

source /etc/bash_completion.d/git

SELECT="if [ \$? = 0 ]; then echo -n \"${SMILEY}\"; else echo -n \"${FROWNY}\"; fi; if [ -w '${PWD}' ]; then echo -n \" ${LIGHTGREEN}\w\"; else echo -n \" ${LIGHTRED}\w\"; fi ;"

GIT="__git_ps1 \" (%s)\";"
PS1="${RESET}${LIGHTGRAY}\u${GRAY}@${WHITE}\h${GRAY}:\`${SELECT}\`${RED}\`${GIT}\`# ${WHITE}"



function _exit()
{
    echo -e "Good Bie `whoami`!"
}
trap _exit EXIT

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
fi

# -autojump 
[[ -s /etc/profile.d/autojump.sh ]] && . /etc/profile.d/autojump.sh
# ---[ Alias Section ]-------------------------------------------------
eval `dircolors`
alias c='clear'
alias gr='grep -i'
alias l='ls -CF'
alias cd..='cd ..'
alias ...='cd ../..'
alias ssh='ssh -2'
alias pa='ps aux'
alias pag='ps aux | grep -i'
alias vi='vim -c ":cd %:p:h"'
#alias mc='mc -bs'
alias man='PAGER=less man -a'
alias cdc='cd ~; clear'
alias d='dirs -v'
alias p='pwd'
alias h=history
alias hg='history | grep'
alias top=htop
alias grep=egrep
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -a --color=auto'
alias lm='ls -al |more'
alias tree='tree -Csu'
alias xs='cd'
alias vf='cd'
alias moer='more'
alias moew='more'
alias kk='ll'

alias ai='sudo apt-get install'
alias as='apt-cache search'
alias au='sudo apt-get update'
alias ag='sudo apt-get upgrade'
# List only directories and symbolic

# links that point to directories
alias lsd='ls -ld *(-/DN)'
# List only file beginning with "."
alias lsa='ls -ld .*'
# web cat
alias wcat='wget -q -O -'
alias dog=wcat

export RUBYOPT="rubygems"
ex () {
if [ -f $1 ] ; then
	case $1 in
	*.tar.bz2) tar xjf $1 ;;
	*.tar.gz) tar xzf $1 ;;
	*.bz2) bunzip2 $1 ;;
	*.rar) rar x $1 ;;
	*.gz) gunzip $1 ;;
	*.tar) tar xf $1 ;;
	*.tbz2) tar xjf $1 ;;
	*.tgz) tar xzf $1 ;;
	*.zip) unzip $1 ;;
	*.Z) uncompress $1 ;;
	*.7z) 7z x $1 ;;
	*) echo "'$1' cannot be extracted via extract()" ;;
	esac
	else
	echo "'$1' is not a valid file"
	fi
}

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

