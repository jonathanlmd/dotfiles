echo "Installing asdf"
yay -S asdf-vm
mkdir ~/.asdf
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing p10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sudo cp pacman/pacman.conf /etc/pacman.conf
sudo cp pacman/mirrorlist /etc/pacman.d/mirrorlist

cp .zshrc ~/
source ~/.zshrc
