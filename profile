source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/config
source ~/.bash/paths

# user darwin or linux for system specific configuration 
source ~/.bash/$(echo `uname -s` | tr "[:upper:]" "[:lower:]")

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc
