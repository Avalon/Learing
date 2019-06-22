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
`usermod -s /usr/bin/zsh YOURUSERNAME`
`sudo chsh`
`sudo usermod -s /usr/bin/zsh USERNAME`

## combine video together using ffmpeg
1. 非MPEG格式(H.264, Divx, XviD, MPEG4, MPEG2, AAC, MP2...)
先包装进ts容器再合并，例如：
'''
ffmpeg -i CD-1.mp4  -c copy -bsf:v h264_mp4toannexb -f mpegts input1.ts                                   
ffmpeg -i CD-2.mp4  -c copy -bsf:v h264_mp4toannexb -f mpegts input2.ts
ffmpeg -i "concat:input1.ts|input2.ts" -c copy -bsf:a aac_adtstoasc -movflags +faststart output.mp4
'''
2. MPEG格式，使用ffmpeg concat协议
`ffmpeg -i "concat:file1.mpg|file2.mpg|file3.mpg" -c copy output.mpg`

## Mount disk on startup with certain permission on certain user
1. Add`/device /mountpoint deviceFileFormat umask=filePermissons,gid=ownerGroupID,uid=ownerID` in /etc/fstab
2. Check gid&uid: `cat /etc/passwd`:
"Username:passwd:uid:gid:comment:$HOME:default shell"
