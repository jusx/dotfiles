# Dotfiles

A small set of configuration for OSX that I can't live without.

## Installation

1. Clone this repo.
2. Run `setup.bash`
3. Add the line `source ~/.dots/profile.sh` to your `.bash_profile`

## Customization

It is sometimes not desirable to share certain ssh config information. The file `privates/ssh/config` can be used to add additional ssh config that is private. `setup.bash` will concat these config with the default config when run. Anything in `privates` are git ignored.

## dotfiles elsewhere
- https://github.com/grawity/dotfiles
