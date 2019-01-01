# Adding colors to LS -- see http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# convenience function to ls with my freuqently used options.
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
