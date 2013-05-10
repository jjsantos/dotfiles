ZSH=$HOME/.oh-my-zsh
ZSH_THEME="aussiegeek-tweak" # custom theme!
plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

. ~/apparix.zsh

if [ -e ~/knock.zsh ]; then
  . ~/knock.zsh
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

alias ll='ls -lhFG'

alias gtt='git status'
alias gtd='git diff'
alias gco='git checkout'
alias gta='git add'
alias gpr='git pull --rebase'

alias grep='grep --color=always'

alias cap='USER=bruno cap'

alias gh="open \`git config -l | grep --color=never 'remote.origin.url' | sed -En 's/remote.origin.url=git(@|:\/\/)github.com(:|\/)(.+)\/(.+).git/https:\/\/github.com\/\3\/\4/p'\`"

alias metrics='rails_best_practices --with-git -f html . ; scp rails_best_practices_output.html staging:/tmp/html/index.html && rm rails_best_practices_output.html'

# Customize to your needs...
export PATH=/Users/bruno/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
