# Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(aliases fzf git git-prompt history themes z)
source $ZSH/oh-my-zsh.sh

# Aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Editor
export EDITOR='nvim'

# Minimal prompt: gray path, dim-blue git branch, gray prompt char. No clown colors.
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats ' %F{110}%b%f%F{244}%u%c%f'
zstyle ':vcs_info:git:*' actionformats ' %F{110}%b|%a%f'
zstyle ':vcs_info:git:*' unstagedstr '*'
zstyle ':vcs_info:git:*' stagedstr '+'
precmd() { vcs_info }
setopt prompt_subst
PROMPT='%F{245}%(4~|…/%3~|%~)%f${vcs_info_msg_0_}
%F{240}❯%f '
RPROMPT=''

# Muted, mostly-gray file listing colors (eza + ls)
export EZA_COLORS="di=38;5;110:ex=38;5;245:ln=38;5;244:*=38;5;245:da=38;5;240:uu=38;5;240:gu=38;5;240:sn=38;5;245:sb=38;5;240"
export CLICOLOR=1
export LSCOLORS="gxfxexdxcxegedabagacad"

# uv/python
export PATH="$HOME/.local/bin:$PATH"
[[ -f "$HOME/.local/bin/env" ]] && . "$HOME/.local/bin/env"

# Machine-specific overrides (work stuff, local paths, creds)
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
