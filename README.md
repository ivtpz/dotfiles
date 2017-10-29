# ivtpz's dotfiles
Config files for vim, i3, tmux, and zsh

## Installation
```bash
# Clone the directory into ~/
git clone https://github.com/ivtpz/dotfiles.git

# Install vim packages (expects vim 8+)
cd dotfiles
git submodule init
git submodule update

# Symlink config files from ~/dotfiles
./install.<linux|mac>.sh

# Install fonts for vim powerline
# See https://github.com/powerline/fonts
```
