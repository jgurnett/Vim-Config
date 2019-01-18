# Vim-Config
My vim config files


## Installation

1. First make sure that you've backed up or removed your own vim files (`.vimrc`, `.vim/`).
2. Clone the repo to your home directory: `git clone https://github.com/jgurnett/Vim-Config.git ~/.vim
3. Prepare Vundle: `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
4. `cd .vim/`
5. `./install.sh`. This creates a symbolic link called `.vimrc` in your home directory, so you are free to edit the .vimrc in this repo and your changes will be observed. It also installs all the plugins using Vundle (this could take a bit of time).
