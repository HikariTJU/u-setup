sudo apt update
sudo apt install -y zsh wget curl build-essentials
echo "y" | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "1" | sh -c "$(curl -fsSL https://sh.rustup.rs)"
cargo install du-dust exa sd
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.deb
sudo dpkg -i nvim-linux64.deb
cp .zshrc ~/.zshrc
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)