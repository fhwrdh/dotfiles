alias ll='ls -l'
alias lt='ls --tree'
alias la='ls -Fal'
alias l='ls -CF'
alias path='echo $PATH | tr -s ":" "\n"'

alias v="vim"
alias vv="/usr/local/bin/vim"
alias n="nvim"


alias g="git"
alias ga="git add "
alias gaa="git add ."
alias gcam="git commit -am "
alias gcm="git commit -m "
alias gcv="git commit -v "
alias gd="git diff"
alias gdc="git diff --cached | view -"
alias gdd="git diff | view -"
alias ggg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias grhh="git reset --hard HEAD"
alias grv="git remote -v"
alias gs="git status"

alias pr="hub pull-request"

alias nrc="npm run coverage"
alias nrl="npm run lint"
alias nrt="npm run test"
alias nrto="CI=true npm run test"
alias nrtc="npm run test -- --coverage"
alias fmln="rm -rf node_modules && npm i"
alias fmly="rm -rf node_modules && yarn"

alias t="todo.sh"
