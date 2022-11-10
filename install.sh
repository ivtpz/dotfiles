#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
base_files="vimrc vim zshrc oh-my-zsh config/i3/config gitconfig"    # list of files/folders to symlink in homedir
files=""
##########

echo "Install on mac or linux?"
select ml in "mac" "linux" "quit"; do
    case $ml in
        mac ) files="$base_files tmux.mac.config"; echo "installing for mac"; break;;
        linux ) files="$base_files tmux.linux.config"; echo "installing for linux"; break;;
        quit ) exit;;
    esac
done

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
  link=$(echo $file | sed 's/\.mac//' | sed 's/\.linux//')
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/.$link ~/dotfiles_old/
  echo "Creating symlink from $file to .$link in home directory."
  ln -s $dir/$file ~/.$link
done
