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

## VScode

install by brew `brew cask install visual-studio-code `

[Settings sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync)

usage:

```
upload setting - shift + alt + U
download setting - shift + alt + D
```

my gist: [my cloud config](https://gist.github.com/LionsHead/ec37901ffbc41e0ab7e6f390a5802809)

## Brew

If a dependency is already installed and there is an upgrade available it will be upgraded.

`brew bundle`

Create new Brewfile

`brew bundle dump --force`

## iterm2 setup

“Load preferences from folder"

`make iterm`

