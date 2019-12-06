setopt NO_CASE_GLOB
setopt AUTO_CD

setopt SHARE_HISTORY                  # share history across multiple zsh sessions
setopt APPEND_HISTORY                 # append to history
setopt INC_APPEND_HISTORY             # adds commands as they are typed, not at shell exit
setopt HIST_IGNORE_DUPS               # do not store duplications
setopt HIST_REDUCE_BLANKS             # removes blank lines from history
HISTFILE=/Users/stout/.zsh_history
HISTCONTROL=ignoreboth
HISTSIZE=2000
SAVEHIST=2000

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

PROMPT='%m %#'


# The following lines were added by compinstall

# partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle :compinstall filename '/Users/stout/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PROMPT='%(?.%F{2}+.%F{red}!%? )%f%1(j.%F{8}%j%f.) %F{69}%~%f
%F{2}%(!.#.>)%f '

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}%b|%r%f'
zstyle ':vcs_info:*' enable git

source ~/.aliases
