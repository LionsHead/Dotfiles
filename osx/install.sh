#!/bin/bash

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

# use defaults

source defaults/system.sh
source defaults/finder.sh
source defaults/safari.sh
source defaults/dock.sh

# restart apps

killall Finder
killall Dock

success "Successfully set MacOS defaults - require a logout/restart"
