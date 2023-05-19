PS1="\$ \w@\h "

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    source $HOME/.bash-git-prompt/gitprompt.sh
fi

if [ -d ~/.asdf ]; then
  source ~/.asdf/asdf.sh
fi