[[ $- != *i* ]] && return

PS1="\[\033[32m\]\u\[\033[m\]@\[\033[36m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

source $HOME/.sh_aliases
source $HOME/.sh_var
