# Nginx

## 使用
```
# 放入/etc/nginx/sites-enabled/flaskapp.conf
sudo touch flaskapp.conf
sudo chmod 666 flaskapp.conf

# 安装
sudo apt-get install nginx

# 启动
service nginx restart

# 测试
nginx -t

# 关闭nginx
nginx  -s quit #网上的关闭命令通常不好用，网站还能上去，我使用的是杀死master进程的方式
ps -ef | grep nginx   #查看nginx所有的进程，查看master 的进程pid
kill -quit pid    #杀死master进程的pid，nginx被完全关闭，再次输入网站url ，发现网站已经被关闭
```

## 命令
```
使用命令的前提条件，必须进入/usr/local/nginx/sbin目录  
(1)查看版本  
在/usr/local/nginx/sbin 目录下执行 ./nginx -v  
(2)启动nginx  
在/usr/local/nginx/sbin 目录下执行 ./nginx  
(3)关闭nginx  
在/usr/local/nginx/sbin 目录下执行 ./nginx -s stop  
(4)重加载nginx  
在/usr/local/nginx/sbin 目录下执行 ./nginx -s reload  
```