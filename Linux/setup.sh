# Install zsh
sudo pacman -Syu zsh

# Make GitHub directory in the $HOME folder
mkdir ~/github

# Install or update git
sudo pacman -Syu git

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup .zshrc
cd ~/github
git clone https://github.com/Marin-Kitagawa/dotfiles
cd dotfiles/Linux
cp .zshrc ~	# Copy the configuration file to $HOME directory


# Install Zshopt
cd ~/github
git clone https://github.com/larz258/Zshopt
cat .zshrc >> ~/.zshrc

# Install rust
curl -fsSL --proto '=https' --tlsv1.3 https://sh.rustup.rs | sh

# Source CARGO ENV file
source ~/.cargo/env

# Install rust coreutils
cargo install sd hyperfine du-dust dutree ytop bottom procs skim bat exa fd-find starship ripgrep tokei tealdeer bandwhich grex rmesg zoxide git-delta tp-note nu sd topgrade

# Install Lunarvim
LV_BRANCH='release-1.2/neovim-0.8' bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
