setopt extendedglob

##########################
### COMPLETION/HISTORY ###
##########################
autoload -U compinit
compinit
zstyle ':completion:*' menu select
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

##############
### THEMES ###
##############
autoload -U promptinit colors
colors
promptinit
if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT="%{$fg[$NCOLOR]%}%n%{$reset_color%}@%{$fg[cyan]%}%m\
%{$reset_color%}:%{$fg[magenta]%}%~\
%{$fg[red]%}%(!.#.»)%{$reset_color%} "
PROMPT2="%{$fg[red]%}\ %{$reset_color%}"
RPS1="${return_code}"

#################
#### ALIASES ####
#################

source $HOME/.sh_aliases
source $HOME/.sh_var
