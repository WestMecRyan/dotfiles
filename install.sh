#!/bin/bash
echo "Setting up dotfiles..."

# Create symlinks for dotfiles
ln -sf /workspaces/.codespaces/.persistedshare/dotfiles/.vimrc ~/.vimrc
ln -sf /workspaces/.codespaces/.persistedshare/dotfiles/.tmux.conf ~/.tmux.conf

# Install Vim-Plug
echo "Installing Vim-Plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Vim plugins non-interactively
echo "Installing Vim plugins..."
vim -E -s -u ~/.vimrc +PlugInstall +qall

# Install Tmux Plugin Manager
echo "Installing Tmux Plugin Manager..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 2>/dev/null || (cd ~/.tmux/plugins/tpm && git pull)

# Source tmux configuration
echo "Sourcing tmux configuration..."
tmux source-file ~/.tmux.conf 2>/dev/null || true

echo "Dotfiles setup completed!"
