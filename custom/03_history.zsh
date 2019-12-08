setopt SHARE_HISTORY                  # share history across multiple zsh sessions
setopt APPEND_HISTORY                 # append to history
setopt INC_APPEND_HISTORY             # adds commands as they are typed, not at shell exit
setopt HIST_IGNORE_DUPS               # do not store duplications
setopt HIST_REDUCE_BLANKS             # removes blank lines from history
HISTFILE=$HOME/.zsh_history
HISTCONTROL=ignoreboth
HISTSIZE=2000
SAVEHIST=2000
