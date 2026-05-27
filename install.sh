#!/usr/bin/env bash
set -e

sudo dnf update -y

sudo dnf install -y \
    git \
    neovim \
    tmux \
    zsh \
    stow \
    ripgrep \
    fd-find \
    fzf

# Make zsh default shell
chsh -s "$(which zsh)"

# Create symlinks
stow nvim tmux zsh git

echo "Done!"