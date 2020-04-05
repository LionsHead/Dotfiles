#!/bin/bash

link () {
	ln -fisv "${DOTFILES_PATH}$1" ~
}

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

info "Installing oh-my-zsh"

sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rm ~/.zshrc

link "zsh/.zshrc"
link "zsh/.aliases"

# shell_integration
curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh

info "Installing oh-my-zsh theme & plugins"

# custom plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
