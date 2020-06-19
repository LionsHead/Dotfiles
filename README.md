# Customizations

Put your custom dotfiles:

~/.gitconfig_local
~/.zshrc_local

# Dotfiles

+ Mac settings +
+ Brew + cask applications
+ Git setup
+ Oh my ZSH + powerlevel9k theme
+ VScode sync configuration
+ ASDF version manager (include Ruby, Node, Elixir, Go, Rust)
+ FiraCode font

## terminal & git

```
# init
➜ git clone https://github.com/LionsHead/Dotfiles.git ~/.dotfiles
➜ cd ~/.dotfiles
➜ make zbs
```

## Brew

If a dependency is already installed and there is an upgrade available it will be upgraded.

`brew bundle`

Create new Brewfile

`brew bundle dump --force`

## iterm2 setup

“Load preferences from folder"

`make iterm`

