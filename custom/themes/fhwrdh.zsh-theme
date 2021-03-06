# fhwrdh.zsh-theme
#
# requires git-prompt plugin
#
FH_GREEN=34
FH_RED=88
FH_GREY=240
FH_BLUE=27
FH_YELLOW=112

git_user() {
  echo $(git config user.name)
}
git_email() {
  echo $(git config user.email)
}

PROMPT='%F{$FH_GREY}%m%f %1(j.%F{$FH_RED}_ %f.)%F{$FH_GREEN}%(5~|…/%3~|%~)%f $(git_super_status)
%F{$FH_BLUE}%(!.#.ⵙ)%f '
# ⵙ  ⵂ ䷀
RPROMPT='%F{$FH_GREY}$(git_email)%f'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{$FH_GREY}|%f "
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{$FH_GREY}%f"
ZSH_THEME_GIT_PROMPT_SEPARATOR="%F{$FH_GREY}%f"
ZSH_THEME_GIT_PROMPT_BRANCH="%F{$FH_GREY}"
ZSH_THEME_GIT_PROMPT_STAGED=" %F{$FH_GREEN}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED=" %F{$FH_RED}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS=" %F{$FH_RED}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND=" %{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD=" %F{$FH_GREEN}%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %F{$FH_YELLOW}%{-%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %F{$FH_GREEN}%{✔%G%}"
ZSH_THEME_GIT_PROMPT_STASHED=" %F{$FH_GREY}%{▾%G%}"
