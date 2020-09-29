#!/usr/bin/env bash

# Delete files if already exist
rm -f /Users/sostema/.aliases
rm -f /Users/sostema/.zshrc
rm -f /Users/sostema/.tmux.conf
rm -f /Users/sostema/.p10k.zsh
rm -f /Users/sostema/.config/nvim
rm -f /Users/sostema/.config/vifm

# Create symlinks for configdotfiles
ln -s /Users/sostema/dotfiles/.aliases /Users/sostema
mkdir /Users/sostema/.config
ln -s /Users/sostema/dotfiles/.config/nvim /Users/sostema/.config
ln -s /Users/sostema/dotfiles/.config/vifm /Users/sostema/.config
ln -s /Users/sostema/dotfiles/.config/zsh/.p10k.zsh /Users/sostema
ln -s /Users/sostema/dotfiles/.config/zsh/.tmux.conf /Users/sostema
ln -s /Users/sostema/dotfiles/.config/zsh/.zshrc /Users/sostema
