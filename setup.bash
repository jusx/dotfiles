#!/bin/bash

# Create dir if not exist.
if [ -d ~/.dots ]; then
   echo "Looks like .dots already exists. Not doing anything."
else
   mkdir ~/.dots

   # get files for git conveniences.
   curl -o ~/.dots/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
   curl -o ~/.dots/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

   # copy files to .dots
   cp -R ./.dots/* ~/.dots

   link ~/.dots/ssh/config ~/.ssh/config
fi
