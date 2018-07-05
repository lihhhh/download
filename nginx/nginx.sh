
wget http://nginx.org/download/nginx-1.8.0.tar.gz
wget http://www.openssl.org/source/openssl-fips-2.0.9.tar.gz
wget http://zlib.net/fossils/zlib-1.2.8.tar.gz
wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.38.tar.gz

yum install gcc-c++

tar zxvf openssl-fips-2.0.9.tar.gz
cd openssl-fips-2.0.9
./config && make && make install


cd ..
tar zxvf pcre-8.38.tar.gz
cd pcre-8.38
./configure && make && make install

cd ..
tar zxvf zlib-1.2.8.tar.gz
cd zlib-1.2.8
./configure && make && make install

cd ..
tar zxvf nginx-1.8.0.tar.gz
cd nginx-1.8.0
yum -y install openssl openssl-devel
./configure --with-http_ssl_module && make && make install

ln -s /usr/local/lib/libpcre.so.1 /lib64/

echo 安装完毕!



