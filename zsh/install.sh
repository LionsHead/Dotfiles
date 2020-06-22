#!/bin/bash

link () {
	ln -fisv "${DOTFILES_PATH}$1" ~
}

info () {
  printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

info "Installing oh-my-zsh"

brew install zsh zsh-completions
chsh -s /usr/local/bin/zsh

link "zsh/.zshrc"
link "zsh/.aliases"

/bin/bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# shell_integration
curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh

info "Installing oh-my-zsh theme & plugins"

# custom plugins
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# theme
git clone https://github.com/bhilburn/powerlevel9k.git $ZSH_CUSTOM/themes/powerlevel9k
