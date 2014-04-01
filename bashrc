#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias tmux='tmux -2'
#PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
PS1='\[\e[1;32m\]\u\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \[\e[1;32m\]\$\[\e[0m\] '

