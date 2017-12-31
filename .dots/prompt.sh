# Various variables you might want for your PS1 prompt instead
# see https://ss64.com/bash/syntax-prompt.html
Time12h="\T"
Time24h="\t"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"
CurrentUser="\u"
Hostname="\h"
HostnameFull="\H"

export PS1=$Cyan$CurrentUser$Color_Off@$Green$Hostname:$BYellow$PathShort$Color_Off'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'$Green'"$(__git_ps1 " (%s)"); \
  else \
    # @5 - Changes to working tree
    echo "'$IRed'"$(__git_ps1 " {%s}"); \
  fi) '$Color_Off'\$ "; \
else \
  # @2 - Prompt when not in GIT repo
  echo " '$Color_Off'\$ "; \
fi)'
