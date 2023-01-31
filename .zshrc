# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git poetry)

source $ZSH/oh-my-zsh.sh

## Hooks
function list_all() {
  emulate -L zsh
  ls
}
if [[ ${chpwd_functions[(r)list_all]} != "list_all" ]];then
  chpwd_functions=(${chpwd_functions[@]} "list_all")
fi


## Aliases

# oh my zsh things
alias zshconfig="vim ~/.zshrc"
alias reroll="exec zsh"
#alias reroll="source Documents/Code/zshrc_profile/.zshrc"


# handy things
alias c="clear"
alias h='history'
alias path='echo -e ${PATH//:/\\n}'

# navigation things
alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -la"
# chpwd() {
#   ll
# }

# git things
alias gg="git status"
alias gal="git add --all"
alias gc="gcmsg"
alias gcm="git checkout main"


## Lib Support

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="/Users/ryanhuttman/.local/bin:$PATH"
function prp () {
   poetry run python $1
}

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion