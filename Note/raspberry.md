1. touch ssh

2. sudo apt-get install xrdp
Microsoft Remote Desktop

3. mkdir -p /mnt/chen
sudo mount /dev/sda1 /mnt/chen/
(can't read superblock)
(sudo fsck /dev/sda1)

4. sudo apt-get install samba
sudo apt-get install samba-common-bin
vim /etc/samba/smb.conf
sudo /etc/init.d/samba restart

5. sudo apt-get install aria2
touch aria2.conf aria2.session
