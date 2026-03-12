# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(aliases fzf git git-prompt history themes z)
source $ZSH/oh-my-zsh.sh

# Aliases
alias ll="ls -l"
alias gs="git status"

# Editor
export EDITOR='nvim'

# uv/python
. "$HOME/.local/bin/env"

# Machine-specific overrides (work stuff, local paths, creds)
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
