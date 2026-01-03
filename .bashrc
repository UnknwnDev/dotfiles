#
# ~/.bashrc
#

export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi


alias vim="nvim"
alias vi="nvim"
alias install="sudo pacman -S"
alias update="sudo pacman -Syu"

# Increase history size
export HISTSIZE=5000 # Increase the number of commands stored in memory.
export HISTFILESIZE=20000 # Increase the number of commands stored on disk.
export HISTCONTROL=ignoredups:erasedups # Avoids duplicate commands in history.
shopt -s histappend # Makes sure new sessions append to histoy file, instead of overwriting it.

bind "set completion-ignore-case on" # Case insensitive file completion.
source -- ~/.local/share/blesh/ble.sh
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(starship init bash)"

# bun
export BUN_INSTALL="$HOME/.local/share/reflex/bun"
export PATH="$BUN_INSTALL/bin:$PATH"
