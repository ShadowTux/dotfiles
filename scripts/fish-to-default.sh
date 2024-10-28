#!/bin/bash
#Uses my dotfiles and installs fish and starship.rs

# Add Fish Shell PPA and install Fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish
sudo apt install tmux

# Install Starship
curl -fsSL https://starship.rs/install.sh | sh

# Create config directories if they don't exist
mkdir -p ~/.config/fish
mkdir -p ~/.config

# Create config files
echo "# Contents of config.fish" > ~/.config/fish/config.fish
curl -fsSL https://raw.githubusercontent.com/ShadowTux/dotfiles/main/config.fish >> ~/.config/fish/config.fish

echo "# Contents of starship.toml" > ~/.config/starship.toml
curl -fsSL https://raw.githubusercontent.com/ShadowTux/dotfiles/main/starship.toml >> ~/.config/starship.toml

# Prompt user to set Fish as the default shell
read -p "Do you want to set Fish as the default shell? (y/n): " choice
if [ "$choice" = "y" ] || [ "$choice" = "Y" ]; then
    chsh -s $(which fish)
    echo "Fish is now the default shell."
fi

echo "All is set!"
