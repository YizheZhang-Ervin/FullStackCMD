# Haproxy

```
#安装
wget http://www.haproxy.org/download/1.7/src/haproxy-1.7.9.tar.gz
tar -xvf haproxy-1.7.9.tar.gz
mkdir /usr/local/haproxy
cd haproxy-1.7.9
make TARGET=/usr/local/haproxy
make install

# 配置文件 vim /usr/local/haproxy/conf/haproxy.cfg

# 日志
增加Haproxy日志存放位置: Haproxy日志默认是存放在/var/log/message，但是message里信息较多，分离出想要的部分到别的日志文件中
vim /etc/sysconfig/rsyslog
SYSLOGD_OPTIONS="-r -m 0 -c 2"
vim /etc/rsyslog.conf -去掉以下两行的注释
ModLoad imudp
UDPServerRun 514
增加
local5.* /var/log/haproxy/haproxy.log #级别为5的日志存放位置，各级文件夹必须存在
重启
service rsyslog restart

# 启动Haproxy
cd /usr/local/haproxy/
./sbin/haproxy -f conf/haproxy.cfg

# 观察日志
tail /var/log/message
```