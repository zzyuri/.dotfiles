#!/usr/bin/env bash
set -e

DOTFILES="$HOME/.dotfiles"
cd "$DOTFILES"

# official packages
echo ">> Instalando pacotes oficiais..."
grep -vE '^\s*(#|$)' packages/pacman.txt | xargs sudo pacman -S --needed --noconfirm

# checking yay
if ! command -v yay &> /dev/null; then
    echo ">> Instalando yay..."
    git clone https://aur.archlinux.org/yay-bin.git /tmp/yay-bin
    (cd /tmp/yay-bin && makepkg -si --noconfirm)
fi

# AUR packages
echo ">> Instalando pacotes do AUR..."
grep -vE '^\s*(#|$)' packages/aur.txt | xargs sudo yay -S --needed --noconfirm

# stow
echo ">> Aplicando dotfiles com stow..."
rm -f ~/.bashrc ~/.bash_profile
cd "$DOTFILES/stow"
stow -t "$HOME" */
cd "$DOTFILES"

# extras
echo ">> Configurações extras..."

# instalar oh my zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo ">> Instalando Oh My Zsh..."
    RUNZSH=no CHSH=no KEEP_ZSHRC=yes sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

sudo systemctl enable --now NetworkManager
sudo systemctl enable --now bluetooth
sudo systemctl enable sddm

# setting zsh as default shell
chsh -s /usr/bin/zsh

sudo usermod -aG video "$USER"

mkdir -p ~/Projects ~/Downloads

echo ">> Pronto! Reinicie o computador."
