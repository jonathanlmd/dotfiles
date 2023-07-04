echo "Configuring pacman"
sudo cp pacman/pacman.conf /etc/pacman.conf
sudo cp pacman/mirrorlist /etc/pacman.d/mirrorlist

echo "Installing tools"
yay -Sy --noconfirm -q aws-cli kubectl asdf-vm neovim
mkdir -p ~/.asdf

## asdf install 

#yay -S docker docker-compose

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing p10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Installing lunar vim"
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)

cp .zshrc ~/
source ~/.zshrc
