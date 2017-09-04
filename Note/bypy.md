# bypy

[Python client for Baidu Yun](https://github.com/houtianze/bypy)

# install

```
# pip
pip3 install bypy
```

# use

1. authorization

第一次运行时需要授权，只需跑任何一个命令，然后登陆等授权页面，授权后复制验证码输入回车即可

```
$ python3 -m bypy list
# Please visit:
# https://openapi.baidu.com/oauth/**************
# And authorize this app
# Paste the Authorization Code here within 10 minutes.
# Press [Enter] when you are done
# XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
# Authorizing, please be patient, it may take upto None seconds...
# Authorizing/refreshing with the OpenShift server ...
# Successfully authorized
```

2. note

授权后，你可以在网盘的我的应用数据文件夹里找到bypy文件夹，他就是应用目录了

![](/img/baiduyun.png)

3. usage

```
python3 -m bypy list
python3 -m bypy upload 
python3 -m bypy downdir /
```

[more usage](https://github.com/houtianze/bypy)

