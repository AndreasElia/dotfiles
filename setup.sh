#!/bin/sh

echo "Installing..."

# Install Homebrew
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Install Brewfile
brew tap homebrew/bundle
brew bundle

# Install Composer packages
/opt/homebrew/bin/composer global require laravel/installer

# Symlink the .zshrc
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Setup macOS permissions
source .macos

echo "Done!"
