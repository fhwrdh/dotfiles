[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Integration with z.
# like normal z when used with arguments but displays an fzf prompt when used without.
# https://github.com/junegunn/fzf/wiki/examples#z
unalias z 2> /dev/null
z() {
  [ $# -gt 0 ] && _z "$*" && return
  cd "$(_z -l 2>&1 | fzf --height 40% --nth 2.. --reverse --inline-info +s --tac --query "${*##-* }" | sed 's/^[0-9,.]* *//')"
}
