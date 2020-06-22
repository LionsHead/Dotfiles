#!/bin/bash

info "Installing oh-my-zsh"

brew install zsh zsh-completions

link "zsh/.zshrc"
link "zsh/.aliases"

git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

# shell_integration
curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh

info "Installing oh-my-zsh theme & plugins"

# custom plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# themes
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
