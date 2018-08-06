1. 默认 SSH 登录关闭，在根目录下创建名为`ssh`的文件即可；
````
touch ssh
````

2. 远程桌面 Microsoft Remote Desktop
````
sudo apt-get install xrdp
````

3. 硬盘挂载
````
mkdir -p /mnt/chen
sudo mount /dev/sda1 /mnt/chen/
# can't read superblock
# sudo fsck /dev/sda1
````

4. samba文件共享
````
sudo apt-get install samba
sudo apt-get install samba-common-bin
vim /etc/samba/smb.conf
sudo /etc/init.d/samba restart
````

5. aria2下载
````
sudo apt-get install aria2
touch aria2.conf aria2.session
````
