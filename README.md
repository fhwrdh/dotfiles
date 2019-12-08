# dotfiles

#### plugins

Download zsh-autosuggestions by

`git clone https://github.com/zsh-users/zsh-autosuggestions.git \$ZSH_CUSTOM/plugins/zsh-autosuggestions`

Download zsh-syntax-highlighting by

`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \$ZSH_CUSTOM/plugins/zsh-syntax-highlighting`

#### .zshrc

```
ZSH_THEME="fhwrdh"

ZSH_CUSTOM=/path/to/dotfiles/custom

plugins=(fasd git git-prompt npm nvm tmux vi-mode z zsh-autosuggestions zsh-syntax-highlighting)

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
source ~/.aliases
```
