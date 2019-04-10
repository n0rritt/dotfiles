# Themes.
ZSH_THEME="spaceship"

# Case-sensitive completion.
CASE_SENSITIVE="true"

# Disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Disable marking untracked files under VCS as dirty.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# History.
HIST_STAMPS="yyyy-mm-dd"

# Plugins.
plugins=(
    #archive
    #extract
    git
    aws
    per-directory-history
    pip
    vi-mode
    zsh-autoswitch-conda
    fzf
)

# Environment variables.
source ~/.zshenv

source ~/.exports

# Oh My Zsh.
source ~/.oh-my-zsh/oh-my-zsh.sh

# User config.
source ~/.zsh/setopt.zsh

# Aliases.
source ~/.aliases

# Functions.
source ~/.functions

# Tracks your most used directories, based on frecency with z.
#source ~/.zsh/plugins/z/z.sh

# dircolors.
if [ -x "$(command -v dircolors)" ]; then
    eval "$(dircolors -b ~/.dircolors)"
fi

# fzf key bindings.
if [ -x "$(command -v fzf)" ]; then
    source ~/.fzf/shell/key-bindings.zsh
fi

# Manage SSH with Keychain.
if [ -x "$(command -v keychain)" ]; then
    eval "$(keychain --eval --quiet id_rsa)"
fi

# Base16 Shell.
if [ -f ~/.local/bin/base16-oxide ]; then
    source ~/.local/bin/base16-oxide
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
