#!/bin/bash
# Assumes Fish Shell and Starship are already installed
# Only creates directories and pulls configuration files

# Create config directories
mkdir -p ~/.config/fish

# Download Fish config
echo "# Contents of config.fish" > ~/.config/fish/config.fish
curl -fsSL https://raw.githubusercontent.com/ShadowTux/dotfiles/main/config.fish >> ~/.config/fish/config.fish

# Download Starship config
echo "# Contents of starship.toml" > ~/.config/starship.toml
curl -fsSL https://raw.githubusercontent.com/ShadowTux/dotfiles/main/starship.toml >> ~/.config/starship.toml

echo "Configuration files updated!"
