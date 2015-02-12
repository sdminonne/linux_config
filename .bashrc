# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias xterm='xterm -bg black -fg white'

export GOPATH=${HOME}/go
export PATH=${GOPATH}/bin:${PATH}:${HOME}/.cask/bin

if [ -f /etc/redhat-release ]; then
    source /usr/share/git-core/contrib/completion/git-prompt.sh
elif [ -f /etc/linuxmint/info ]; then
    source /etc/bash_completion.d/git-prompt
else
    source /usr/share/git/completion/git-prompt.sh
fi


GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM=verbose
GIT_PS1_SHOWCOLORHINTS=1
PROMPT_COMMAND='__git_ps1 "\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]" "\$(if [[ \$? -eq 0 ]]; then printf \"\[\033[01;30m\]\"; else printf \"\[\033[07;31m\]\"; fi)\\$\[\033[00m\] "'
GREP_OPTIONS='--color'
LESS='-R'
HISTIGNORE='&:ls'

export BOOST=$HOME/BOOST
