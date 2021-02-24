export ZSH="${HOME}/.oh-my-zsh"
# export ARCHFLAGS="-arch x86_64" m1 hello

DEFAULT_USER=`whoami`
DISABLE_UNTRACKED_FILES_DIRTY="true"

# brew fix ffi
# brew install automake libffi pkg-config
# export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"
# gem install ffi -v '1.12.2' -- --with-cflags="-Wno-error=implicit-function-declaration"
#### apple m1 cfg
# asdf m1
export RUBY_CONFIGURE_OPTS="--with-zlib-dir=/opt/homebrew/opt/zlib --with-openssl-dir=/opt/homebrew/opt/openssl@1.1 --with-readline-dir=/opt/homebrew/opt/readline --with-libyaml-dir=/opt/homebrew/opt/libyaml"
export RUBY_CFLAGS="-Wno-error=implicit-function-declaration"
export CONFIGURE_OPTS="--build aarch64-apple-darwin20"
# ffi m1
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"

# new test

export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig"

# use zplug?
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_DISABLE_COMPFIX=true

source $ZSH/oh-my-zsh.sh
source ~/.iterm2_shell_integration.zsh
source ~/.aliases

# If command execution time above min. time, plugins will not output time.
ZSH_COMMAND_TIME_MIN_SECONDS=3

# Message to display (set to "" for disable).
ZSH_COMMAND_TIME_MSG="Execution time: %s sec"

ZSH_HIGHLIGHT_MAXLENGTH=90

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_folders

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(asdf time)

POWERLEVEL9K_TIME_FOREGROUND='black'
POWERLEVEL9K_TIME_BACKGROUND='blue'
# POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S | %d.%m.%yг.}"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S }"

# Advanced `vcs` color customization
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'

# brew

eval "$(/opt/homebrew/bin/brew shellenv)"
#### asdf
# native installation
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
#
# by brew
# . /opt/homebrew/opt/asdf/libexec/asdf.sh

#### local config

if [[ -f ~/.zshrc_local ]]; then
  source ~/.zshrc_local
fi

