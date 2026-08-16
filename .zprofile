#!/bin/sh
# for environment variables to be set before .zshrc gets sourced

export EDITOR="nvim"
export TERM="xterm-ghostty"
export TERMINAL="xterm-ghostty"

# XDG config
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
# bootstrap .zshrc to ~/.config/zsh/.zshrc, any other zsh config files can also reside here
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export POWERLEVEL9K_CONFIG_FILE="$ZDOTDIR/.p10k.zsh"
# Created by `pipx` on 2023-11-30 19:54:35
export PATH="$PATH:/Users/adamc/.local/bin"
