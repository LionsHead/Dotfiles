ZSH_CUSTOM = ~/.oh-my-zsh/custom/
DOTFILES_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

zbs: iterm-config brew zsh init-config asdf

brew:
	is-executable brew || curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install | ruby
	brew bundle --file=$(DOTFILES_DIR)brew/Brewfile

iterm-config:
	defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string $(DOTFILES_DIR)iterm2
	defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

zsh:
	sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	ln -fisv $(DOTFILES_DIR).zshrc ~
	ln -fisv $(DOTFILES_DIR).aliases ~
	curl -L https://iterm2.com/shell_integration/zsh -o ~/.iterm2_shell_integration.zsh

zsh-plugins:
	git clone https://github.com/zsh-users/zsh-autosuggestions $(ZSH_CUSTOM)plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $(ZSH_CUSTOM)plugins/zsh-syntax-highlighting
	git clone https://github.com/bhilburn/powerlevel9k.git $(ZSH_CUSTOM)themes/powerlevel9k

init-config:
	ln -fisv $(DOTFILES_DIR)git/.gitconfig ~
	ln -fisv $(DOTFILES_DIR)git/.gitconfig_local ~
	ln -fisv $(DOTFILES_DIR)git/.gitignore_global ~
	ln -fisv $(DOTFILES_DIR)asdf/.tool-versions ~
	ln -fisv $(DOTFILES_DIR)asdf/.asdfrc ~
	ln -fisv $(DOTFILES_DIR)zsh/.aliases ~
	ln -fisv $(DOTFILES_DIR)zsh/.zshrc ~
	ln -fisv $(DOTFILES_DIR)dot_configs/.editorconfig ~
	ln -fisv $(DOTFILES_DIR)dot_configs/ruby/.gemrc ~
	ln -fisv $(DOTFILES_DIR)dot_configs/ruby/.default-gems ~
	ln -fisv $(DOTFILES_DIR)dot_configs/elixir/.iex.exs ~


asdf:
	git clone https://github.com/asdf-vm/asdf.git ~/.asdf
	echo -e '\n. ~/.asdf/asdf.sh' >> ~/.zshrc
	echo -e '\n. ~/.asdf/completions/asdf.bash' >> ~/.zshrc
	asdf install

vscode-list:
	code --list-extensions | xargs -L 1 echo code --install-extension
