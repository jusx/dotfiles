## Defaults
source ~/.dots/.git-completion.bash
source ~/.dots/.git-prompt.sh
source ~/.dots/colors.sh
source ~/.dots/prompt.sh

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


ls_ext() {
  if [ $# -eq 0 ]; then # if ls is called without any arguments
    # make ls print full info, with color
    ls -Fa
  elif [ $1='-la' ]
  then
    ls -GFhla
  else
    ls $@ # otherwise call as intended
  fi
}
alias ls="ls_ext"
