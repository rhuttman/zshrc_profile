# Path to your oh-my-zsh installation.
export ZSH="/Users/rhuttman/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

function list_all() {
  emulate -L zsh
  ls
}
if [[ ${chpwd_functions[(r)list_all]} != "list_all" ]];then
  chpwd_functions=(${chpwd_functions[@]} "list_all")
fi


# Aliases
alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -la"
alias c="clear"
alias reroll="source Documents/Code/zshrc_profile/.zshrc"
alias h='history'
alias path='echo -e ${PATH//:/\\n}'
