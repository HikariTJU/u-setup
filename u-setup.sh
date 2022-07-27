sudo apt update

sudo apt install -y zsh wget curl build-essential python3-pip python3 tmux git
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs 


cp .tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
bash ~/.tmux/plugins/tpm/bin/install_plugins
#install zsh
echo "y" | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install rust du exa sd
sh -c "$(curl -fsSL https://sh.rustup.rs)"
source ~/.cargo/env

cargo install du-dust exa sd fd-find
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.deb
sudo dpkg -i nvim-linux64.deb
cp .zshrc ~/.zshrc

# install lunarvim
npm install -g yarn
yarn config set proxy $http_proxy
yarn config set https-proxy $https_proxy
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh) --install-dependencies -y