#!/bin/bash

# Create dir if not exist.
if [ -d ~/.dots ]; then
   echo "Looks like .dots already exists. Not re-creating."
else
   echo "Creating ~/.dots"
   mkdir ~/.dots
fi

# get files for git conveniences.
echo "curling git helper scripts..."
curl -o ~/.dots/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -o ~/.dots/.git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

# copy files to .dots
echo "Copying and updating dotfiles..."
cp -R ./dots/* ~/.dots

echo "Linking .ssh/config..."
if [ -f ./privates/ssh/config ]; then
   echo "" >> ~/.dots/ssh/config # add a new line
   cat ./privates/ssh/config >> ~/.dots/ssh/config
fi
link ~/.dots/ssh/config ~/.ssh/config

printf "\nDone!\n"
