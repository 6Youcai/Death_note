# root 
1. install zsh
    sudo apt-get install zsh
2. check
    cat /etc/shells # all
    echo $SHELL # current
3. [oh my zsh](http://ohmyz.sh/)
    sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# without root
1. download zsh source code
     [the website](http://zsh.sourceforge.net/Arc/source.html)
2. install zsh
    cd zsh-5.2
    ./configure --prefix=$HOME
    make
    make install
3. unknow...
