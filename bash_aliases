alias ll='ls -l'
alias la='ls -Fal'
alias l='ls -CF'
alias path='echo $PATH | tr -s ":" "\n"'

alias v="vim"
alias vv="/usr/local/bin/vim"
alias gs="git status"
alias gaa="git add ."
alias ggg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gd="git diff"
alias gdc="git diff --cached | view -"
alias gdd="git diff | view -"
alias grv="git remote -v"
alias gcam="git commit -am "
alias gcm="git commit -m "
alias grhh="git reset --hard HEAD"
alias pr="hub pull-request"

alias nrc="npm run coverage"
alias nrl="npm run lint"
alias nrt="npm run test"
alias nrto="CI=true npm run test"
alias nrtc="npm run test -- --coverage"
alias fmln="rm -rf node_modules && npm i"
alias fmly="rm -rf node_modules && yarn"

alias t="todo.sh"
