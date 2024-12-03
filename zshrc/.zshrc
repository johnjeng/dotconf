# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git asdf aliases vi-mode brew emoji-clock)

source $ZSH/oh-my-zsh.sh

export VI_MODE_SET_CURSOR=true

# User configuration

alias vim="nvim"
alias code="nvim"
alias rc="vim ~/.zshrc && source ~/.zshrc"
alias vmc="vim ~/.config/nvim"
alias wtc="vim ~/.config/wezterm/"

# alias pip="pip3"
# alias python="python3"

# git pull the current branch from origin - avoids pulling the world
alias gpo="git pull origin $(git rev-parse --abbrev-ref HEAD)"
