print "Checking for updates..."

sudo pacman -Syy && sudo pacman -Syyu

print "Installing Yay AUR Helper"

sudo pacman -S yay

print "Installing required packages..."

  yay -S git neofetch bpytop tokei neovim zsh starship exa bat wget curl

print "Finished installing packages!"
