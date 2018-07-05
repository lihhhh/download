#!/bin/bash

#Install Dependence
yum -y install zlib zlib-devel
yum -y install bzip2 bzip2-devel
yum -y install ncurses ncurses-devel
yum -y install readline readline-devel
yum -y install openssl openssl-devel
yum -y install openssl-static
yum -y install xz lzma xz-devel
yum -y install sqlite sqlite-devel
yum -y install gdbm gdbm-devel
yum -y install tk tk-devel

#Install Python3
tar -xvf Python-3.6.4.tar.xz && cd Python-3.6.4/
./configure --prefix=/usr/python3
make && make install && echo "### Python3 install success!"

#Creating Soft Link
if [ -f "/usr/bin/python3" ];then
rm -rf /usr/bin/python3 && ln -s /usr/python3/bin/python3 /usr/bin/python3 && echo "### Add python3 link Done!"
else
ln -s /usr/python3/bin/python3 /usr/bin/python3 && echo "### Add python3 link Done!"
fi
if [ -f "/usr/bin/pip3" ];then
rm -rf /usr/bin/pip3 && ln -s /usr/python3/bin/pip3 /usr/bin/pip3 && echo "### Add pip3 link Done!"
else
ln -s /usr/python3/bin/pip3 /usr/bin/pip3 && echo "### Add pip3 link Done!"
fi



