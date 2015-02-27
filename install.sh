#!/bin/sh

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update dotfiles itself first
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

# Create symlinks for each file/folder
files="bashrc bash_profile emacs gitconfig gitignore_global vimrc"
for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -sfv "$DOTFILES_DIR/$file" $HOME/.$file
done

## folders="emacs.d vim" #emacs folder not working..
# folders="vim"
# for folder in $folders; do
#     echo "Creating symlink to $folder in home directory."
#     ln -sfv "$DOTFILES_DIR/$folder" $HOME/.$folder
# done

# For making a symbolic link (ln):
# -s, --symbolic    make symbolic links instead of hard links
# -f, --force       remove existing destination files
# -v, --verbose     print name of each linked file
