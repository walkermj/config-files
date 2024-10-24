# For MacOS System
# Show hidden files in finder
defaults write com.apple.finder AppleShowAllFiles YES

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Installing all brew packages
brew bundle

# git
stow git -t $HOME/
git config --global core.excludesfile $HOME/.gitignore

# Setup symlinks for relevant dot files
ln -s ~/.config/config-files/.zshrc ~/.zshrc
ln -s ~/.config/config-files/.tmux.conf ~/.tmux.conf

# Install AstroNvim
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
# remove template's git connection to set up your own later
rm -rf ~/.config/nvim/.git
nvim
