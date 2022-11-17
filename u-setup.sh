sudo apt update

sudo apt install -y zsh wget curl build-essential python3-pip python3 tmux git


cp .tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
bash ~/.tmux/plugins/tpm/bin/install_plugins
#install zsh
echo "y" | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install rust du exa sd
sh -c "$(curl -fsSL https://sh.rustup.rs)"
source ~/.cargo/env

cargo install du-dust exa sd fd-find
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.deb
sudo dpkg -i nvim-linux64.deb
wget https://github.com/dandavison/delta/releases/download/0.14.0/git-delta_0.14.0_amd64.deb
sudo dpkg -i git-delta_0.14.0_amd64.deb
cat .gitconfig >> ~/.gitconfig
cp .zshrc ~/.zshrc
# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# install lunarvim
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
zsh
