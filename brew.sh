#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install powerlevel10k
brew install romkatv/powerlevel10k/powerlevel10k
brew install antigen
brew intsall neovim
brew install node
brew install vifm
brew install tmux
brew install neofetch

brew cask install iterm2
brew cask install chrome

# Install Nerd patched fonts
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# Remove outdated versions from the cellar.
brew cleanup
