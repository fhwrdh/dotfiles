# fhwrdh.zsh-theme
#
# requires git-prompt plugin
#
FH_GREEN=28
FH_RED=88
FH_GREY=8
FH_BLUE=19
FH_YELLOW=112

PROMPT='%1(j.%F{$FH_RED}_ %f.)%F{$FH_GREEN}%~%f $(git_super_status)
%F{$FH_BLUE}%(!.#.ⵙ)%f '
# ⵙ  ⵂ ䷀
RPROMPT=''

ZSH_THEME_GIT_PROMPT_PREFIX="%F{$FH_GREY}|%f "
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{$FH_GREY}%f"
ZSH_THEME_GIT_PROMPT_SEPARATOR="%F{$FH_GREY}%f"
ZSH_THEME_GIT_PROMPT_BRANCH="%F{$FH_GREY}"
ZSH_THEME_GIT_PROMPT_STAGED=" %F{$FH_GREEN}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED=" %F{$FH_RED}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS=" %{$FH_RED}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND=" %{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD=" %{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %F{$FH_YELLOW}%{-%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$FH_GREEN]}%{✔%G%}"
