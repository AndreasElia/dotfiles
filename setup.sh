# !/bin/sh

echo "Installing..."

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Brewfile
brew tap homebrew/bundle
brew bundle

# Install Composer packages
/usr/local/bin/composer global require laravel/installer

# Symlink the .zshrc
# ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

echo "Done!"
