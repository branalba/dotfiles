#
# ~/.bashrc
#

# fetch
pfetch

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# add ~/.local/bin to PATH
export PATH=/home/branalba/.local/bin:$PATH

# enable git autocompletions
source /usr/share/bash-completion/completions/git

## ALIASES

# vim 
alias v='vim'

# activate virtual environment
alias avirt='source myenv/bin/activate'
