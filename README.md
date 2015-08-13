# dotfiles

To install:
sudo bash install.sh

Note:
This creates folders. Currently, if the folders already exist, it messes up. If
you'd like to re-run it, comment out these lines first:

> folders="emacs.d vim themes fonts" 
> for folder in $folders; do
>    echo "Creating symlink to $folder in home directory."
>    ln -sfv "$DOTFILES_DIR/$folder" $HOME/.$folder
> done

There is something wrong with creating the emacs.d folder. Instead, it creates
an emacs.d folder in $HOME/.emacs.d. Move this symlink to $HOME, delete
the now empty .emacs.d folder, and rename the emacs.d symlink to .emacs.d
