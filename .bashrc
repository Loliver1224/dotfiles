# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# default active -i
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# for grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ls='ls -F --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias bashrc='source ~/.bashrc'

alias cat='cat -n'
alias rmdir='rmdir -pv'

alias ..='cd ..'
alias ....='cd ../..'

alias v='vim'
alias c='clear'

# git
alias gs='git status'
alias gd='git diff'
alias gc='git commit'

# source ~/.bash_profile
