# common
alias e="atom -nw"
alias ..='cd ..'
alias ls="ls --color=auto"
alias l="ls -lAh --color=auto"
alias ll="ls -l --color=auto"
alias la='ls -A --color=auto'

# node
alias fs="foreman start"
alias nm="nodemon"

# git
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias changelog='git log `git log -1 --format=%H -- CHANGELOG*`..; cat CHANGELOG*'

# git-wip
alias push="git push origin master"
alias pull="git pull origin master"
alias ga="git add -A"
alias wip="ga; git commit -m 'work in progress'; push"

function gc(){
  git commit -m "$1"
}

# rails
alias rc='rails console'
alias rs='rails server'
alias sc='script/console'
alias ss='script/server'
alias sg='script/generate'
alias a='autotest -rails'
alias tlog='tail -f log/development.log'
alias scaffold='script/generate nifty_scaffold'
alias migrate='rake db:migrate db:test:clone'
alias rst='touch tmp/restart.txt'

# heroku
alias hc="heroku create --region eu"
alias hp="git push heroku master"

# docker
alias drac="docker rm $(docker ps -a -q)"
alias drai="docker rmi $(docker images -q)"
