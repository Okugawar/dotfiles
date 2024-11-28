alias emacs='/Applications/emacs.app/Contents/MacOS/Emacs'

alias ssh='~/bin/ssh-host-color'

alias gb='git branch'
alias gsw='git switch'
alias gswc='git switch -c'
alias gs='git status'
alias gst='git status'
alias gsm='git switch master'
alias gpom='git pull origin master'
alias gg='git graph'

alias ocaml="rlwrap ocaml"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source <(kubectl completion bash)
