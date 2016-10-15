sudo apt remove -y vim
sudo mv /usr/bin/vim /usr/bin/vim_bak
sudo apt install -y vim-gnome

git clone https://github.com/vim/vim.git
cd vim
./configure  --enable-pythoninterp=yes --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu
make
sudo make install
