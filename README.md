# dotfiles

#### .zshrc

```
ZSH_THEME="fhwrdh"

...

ZSH_CUSTOM=/path/to/dotfiles/custom

...

plugins=(fasd fzf git git-prompt npm nvm tmux vi-mode z zsh-autosuggestions zsh-syntax-highlighting)
```

#### plugins
Do this after setting $ZSH_CUSTOM above

Download zsh-autosuggestions by

`git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`

Download zsh-syntax-highlighting by

`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`
