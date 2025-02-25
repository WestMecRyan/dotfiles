#!/bin/bash

echo "Setting up dotfiles..."

# Copy or symlink your dotfiles
ln -sf /workspaces/dotfiles/.vimrc ~/.vimrc
ln -sf /workspaces/dotfiles/.tmux.conf ~/.tmux.conf

echo "Dotfiles setup completed!"
