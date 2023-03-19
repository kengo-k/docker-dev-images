export ZSH=$HOME/.oh-my-zsh

if [ -e $ZSH/oh-my-zsh.sh ]; then
  #ZSH_THEME="agnoster"
  ZSH_THEME="robbyrussell"
  plugins=(git docker)
  source $ZSH/oh-my-zsh.sh
fi

if [ -d ~/.asdf ]; then
  source ~/.asdf/asdf.sh
fi