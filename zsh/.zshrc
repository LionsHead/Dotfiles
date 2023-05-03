export ZSH="${HOME}/.oh-my-zsh"

DEFAULT_USER=`whoami`
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

ZSH_DISABLE_COMPFIX=true

# If command execution time above min. time, plugins will not output time.
ZSH_COMMAND_TIME_MIN_SECONDS=3

# Message to display (set to "" for disable).
ZSH_COMMAND_TIME_MSG="Execution time: %s sec"

ZSH_HIGHLIGHT_MAXLENGTH=90

ZSH_THEME="powerlevel10k/powerlevel10k"

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

source $ZSH/oh-my-zsh.sh
source ~/.iterm2_shell_integration.zsh
source ~/.aliases

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

#### asdf
# native installation
# . $HOME/.asdf/asdf.sh
# . $HOME/.asdf/completions/asdf.bash
#
# by brew
. /opt/homebrew/opt/asdf/libexec/asdf.sh

#### local config

if [[ -f ~/.zshrc_local ]]; then
  source ~/.zshrc_local
fi

