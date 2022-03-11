# Mysql in CentOS

# 安装
```
# 下载
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
rpm -ivh mysql-community-release-el7-5.noarch.rpm
yum install mysql-server -y

# 文件夹授权
chown mysql:mysql -R /var/lib/mysql

# 初始化
mysqld --initialize

# 启动
systemctl start mysqld
systemctl status mysqld

# 设置root密码
mysqladmin -u root password "111111"

# 登录
mysql -uroot -p111111

# 创库创表
create database xx
use xx
source /root/xx.sql

# 数据库授权
grant all on *.* to 'root'@'%' identified by '111111';
flush privileges;
```