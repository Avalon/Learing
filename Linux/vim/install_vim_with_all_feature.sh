echo "---------installing dependences--------------"
sudo apt install cmake gtk2.0-dev gtk3.0-dev libncurses-dev libx11-dev python-dev python3-dev ruby-dev lua5.1-0-dev 
echo "----------cloning latest source--------------"
git clone git@github.com:vim/vim.git && cd vim
echo "-------------configuring---------------------"
./configure --with-features=huge --enable-pythoninterp --enable-rubyinterp --enable-luainterp --enable-perlinterp --with-python-config-dir=/usr/lib/python3.6/config-3.6m-x86_64-linux-gnu --enable-gui=gtk2 --enable-cscope --prefix=/usr
echo "-------------installing----------------------"
make && sudo make install
