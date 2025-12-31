#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

alias install="sudo pacman -S"

# Increase history size
export HISTSIZE=5000 # Increase the number of commands stored in memory.
export HISTFILESIZE=20000 # Increase the number of commands stored on disk.
export HISTCONTROL=ignoredups:erasedups # Avoids duplicate commands in history.
shopt -s histappend # Makes sure new sessions append to histoy file, instead of overwriting it.

bind "set completion-ignore-case on" # Case insensitive file completion.
source -- ~/.local/share/blesh/ble.sh
