# learnLinux

## Aria2
- `sudo apt install aria2`
- `sudo mkdir /etc/aria2 ~/Downloads/A2D` 新建文件夹 
- `sudo touch /etc/aria2/aria2.session` 新建session文件
- `sudo chmod 777 /etc/aria2/aria2.session` 设置aria2.session可写 
- `sudo vim /etc/aria2/aria2.conf` 创建配置文件
- `aria2c --conf=/etc/aria2/aria2.conf -D`

## VMware Workstation Pro 15
YG5H2-ANZ0H-M8ERY-TXZZZ-YKRV8

## oh-my-zsh
- install
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`or `sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`
- set as default shell(a reboot is needed)
`sudo chsh -s /usr/bin/zsh root`

