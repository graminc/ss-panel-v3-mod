echo 'y' | cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime > /dev/null 2>&1
yum install python-setuptools && easy_install pip
echo -e "\033[31m install python successfully\033[0m"
sleep 2
yum install git
echo -e "\033[31m install python successfully\033[0m"
yum -y groupinstall "Development Tools"
wget https://github.com/jedisct1/libsodium/releases/download/1.0.10/libsodium-1.0.10.tar.gz
tar xf libsodium-1.0.10.tar.gz && cd libsodium-1.0.10
./configure && make -j2 && make install
echo /usr/local/lib > /etc/ld.so.conf.d/usr_local_lib.conf
ldconfig
cd 
pip install cymysql
git clone -b manyuser https://github.com/glzjin/shadowsocks.git
cd shadowsocks
chmod +x *.sh
cp apiconfig.py userapiconfig.py
cp config.json user-config.json
rpm -Uvh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm --quiet
yum install supervisor python-pip -y
pip install supervisor==3.1
chkconfig supervisord on
wget https://github.com/glzjin/ssshell-jar/raw/master/supervisord.conf -O /etc/supervisord.conf
wget https://github.com/glzjin/ssshell-jar/raw/master/supervisord -O /etc/init.d/supervisord
echo -e "\033[31m supervisor install complete.\033[0m"
echo -e "\033[31m please open /root/shadowsocks/userapiconfig.py\033[0m"
