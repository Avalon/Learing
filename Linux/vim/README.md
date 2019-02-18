# Everything about vim
This repo contains a `.vimrc` file and a syncvim.sh file, 
which copies vimrc from your home directory to current directory.
## Install vim from source
- `git clone git@github.com:vim/vim.git` 
- `sudo apt install gtk2.0-dev gtk3.0-dev libncurses-dev libx11-dev python-dev python3-dev ruby-dev lua5.1-0-dev`
- `./configure --with-features=huge --enable-pythoninterp --enable-rubyinterp --enable-luainterp --enable-perlinterp --with-python-config-dir=/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu --enable-gui=gtk2 --enable-cscope --prefix=/usr`
- `make && sudo make install`
- Install vundle: `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

