# Installing neovim, rust, lunarvim
su
pacman -Syu neovim
curl -sSf --proto '=https' --tlsv1.2 https://sh.rustup.rs | sh
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

# Installing zsh
pacman -Syu zsh
exit

