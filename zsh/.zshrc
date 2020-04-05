export ZSH="${HOME}/.oh-my-zsh"
export ARCHFLAGS="-arch x86_64"
# export SSH_KEY_PATH="~/.ssh/rsa_id"

DEFAULT_USER=`whoami`
DISABLE_UNTRACKED_FILES_DIRTY="true"

# use zplug?
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

ZSH_THEME="powerlevel9k/powerlevel9k"

source $ZSH/oh-my-zsh.sh
source ~/.iterm2_shell_integration.zsh
source ~/.aliases

# If command execution time above min. time, plugins will not output time.
ZSH_COMMAND_TIME_MIN_SECONDS=3

# Message to display (set to "" for disable).
ZSH_COMMAND_TIME_MSG="Execution time: %s sec"

ZSH_HIGHLIGHT_MAXLENGTH=90

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)

# time
POWERLEVEL9K_TIME_FOREGROUND='black'
POWERLEVEL9K_TIME_BACKGROUND='blue'
# POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S | %d.%m.%yг.}"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S }"

# Advanced `vcs` color customization
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='red'

# asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# java
export JAVA_HOME=`/usr/libexec/java_home`
