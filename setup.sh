echo "Configuring pacman"
sudo cp pacman/pacman.conf /etc/pacman.conf
sudo cp pacman/mirrorlist /etc/pacman.d/mirrorlist

echo "Installing tools"
yay -Sy --noconfirm -q aws-cli kubectl asdf-vm ripgrep docker docker-compose tree-sitter-cli downgrade tmux byobu neovim zsh
mkdir -p ~/.asdf

## load asdf
source /opt/asdf-vm/asdf.sh
asdf plugin-add python
asdf plugin-add nodejs
asdf plugin-add rust

asdf install nodejs 21.7.3
asdf install python 3.11.10
asdf install rust stable

asdf global nodejs 21.7.3
asdf global python 3.11.10
asdf global rust stable

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing p10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp .p10k.zsh ~/.p10k.zsh

echo "Installing lunar vim"
#LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)
sh <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

cp .zshrc ~/
chsh -s /usr/bin/zsh
