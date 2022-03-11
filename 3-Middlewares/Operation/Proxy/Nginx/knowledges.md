Nginx
一、基本概念
1.概念
(1)定义:高性能http和反向代理web服务器，并发最大5万
(2)功能:静态文件、反向代理、负载均衡
(3)特点:热部署、不间断运行

2.反向代理
(1)正向代理:客户端(配置代理服务器)->代理服务器->网站
(2)反向代理:客户端(不做配置)->反向代理服务器(对外暴露，把请求转发给目标服务端)->服务端(真实服务器不暴露)

3.负载均衡
(1)作用:提高并发数量
(2)原理:请求分发到多个服务器，负载分到各服务器
(3)流程:客户端->反向代理服务器(平均分摊到多个服务器)->多个服务端
(4)策略:
默认轮询
weight(默认1，权重高负载高):每个地址后加weight=数字
ip_hash(每个访客固定服务器解决session问题):上一行加ip_hash
fair(按响应时间分配，短的优先分配):下一行加fair;

4.动静分离
(1)原理:动态页面和静态页面由不同服务器解析
(2)流程:客户端->反向代理服务器->静态资源服务器/动态资源服务器

5.高可用
多个Nginx(主master和备backup)，防止宕机，
使用keepalived


二、安装
1.安装
(1)进Linux
(2)安装依赖(pcre/openssl/zlib)
手动装:下载解压后./configure然后make&&make install
自动装: yum -y install gcc zlib zlib-devel pcre pcre-devel openssl openssl-devel
(3)装nginx
下载nginx.tar.gz解压后./configure然后make&&make install
会出现在/usr/local/nginx文件夹中，sbin为启动脚本
(4)测试
sbin下输入./nginx启动
nginx中有conf可配置监听端口
(5)防火墙
看开放端口firewall-cmd --list-all
设置开放端口号
firewall-cmd --add-service=http --permanent
Sudo firewall-cmd --add-port=80/tcp --permanent
重启防火墙firewall-cmd --reload
(5)keepalive安装
yum install keepalived -y
etc里生成目录keepalived，里面有keepalived.conf
启动systemctl start keepalived.service

2.命令
使用命令的前提条件，必须进入/usr/local/nginx/sbin目录
(1)查看版本
在/usr/local/nginx/sbin 目录下执行 ./nginx -v
(2)启动nginx
在/usr/local/nginx/sbin 目录下执行 ./nginx
(3)关闭nginx
在/usr/local/nginx/sbin 目录下执行 ./nginx -s stop
(4)重加载nginx
在/usr/local/nginx/sbin 目录下执行 ./nginx -s reload

3.配置文件
(1)位置：/usr/local/nginx/conf/nginx.conf
(2)组成
三部分组成
(A)全局块:运行的配置命令，比如并发数量：worker_processes 1
(B)Events块:与用户网络的连接，比如最大连接数:worker_connections 1024
(C)http块(配置最频繁):
(C-1)http全局块:文件引入、 MIME-TYPE 定义、日志自定义、连接超时时间、单链接请求数上限
(C-2)Server块(与虚拟主机相关)
每个 http 块可包括多个 server 块，而每个 server 块就相当于一个虚拟主机。
而每个 server 块也分为全局 server 块，以及可以同时包含多个 locaton 块
(C-2-1)全局server块:最常见的配置是本虚拟机主机的监听配置和本虚拟主机的名称或 IP 配置
(C-2-2)location块:基于 Nginx 服务器接收到的请求字符串（例如 server_name/uri-string），对虚拟主机名称（也可以是 IP 别名）之外的字符串（例如 前面的 /uri-string）进行匹配，对特定的请求进行处理。地址定向、数据缓存和应答控制等功能，还有许多第三方模块的配置也在这里进行

三、配置实例
1.反向代理
实例1
(1)效果:浏览器输入www.123.com直接跳转到tomcat主页面

(2)准备工作:装tomcat默认端口8080,解压并bin中./startup.sh启动，firewall开放tomcat端口
(3)过程分析:Windows->nginx在本地Windows的host文件配置域名映射的ip地址(当没有外部dns解析时[未买域名])
(4)配置
Windows>system32>drivers>etc>host最后加上 192.168.17.129 www.123.com
Nginx请求转发配置为
server{
server_name 192.168.17.129
location ~ {proxy_pass http:// 127.0.0.1:8080;}
}
实例2
(1)效果:根据访问的路径跳转到不同端口的服务中
访问192.168.17.129:9001/a/跳转到127.0.0.1:8080，访问192.168.17.129:9001/b/跳转到127.0.0.1:8081
(2)准备工作:两个tomcat服务器，tomcat的webapps中创文件夹和测试页面,防火墙开放端口号8080,8081,9001
(3)配置
server{
listen:9001
server_name 192.168.17.129
location ~ /edu/{proxy_pass http://127.0.0.1:8080;}
location ~ /vod/{proxy_pass http://127.0.0.1:8081;}
}
(=严格匹配，~正则区分大小写,~*正则不区分大小写，^~不含正则，找匹配度最高)

2.负载均衡
实例
(1)效果:输入192.168.17.129/edu/a.html平均分配到8080和8081
(2)准备工作:两个tomcat服务器
(3)配置
http{
// 负载均衡的监听列表
upstream myserver{
server 192.168.17.129:8080 weight=1;
server 192.168.17.129:8081 weight=1;
}
server{
server_name 192.168.17.129
location / {
proxy_pass http://myserver; 
}
}
}

3.动静分离
实例
(1)效果:访问静态资源直接由nginx响应,192.168.17.129/image/01.jpg
(2)准备工作:创静态资源
(3)配置
server{
server_name 192.168.17.129
location /www/ {root /data/;index index.html}
//autoindex列出当前文件夹内内容，在地址栏输入/image时可看到 
//expires可设置缓存时间->3d为三天
location /image/ {root /data/;autoindex on}
}

4.高可用
实例
(1)效果:一个服务器宕机换另一台服务，输入192.168.17.50(虚拟IP)可访问到，关掉主服务器129，会使用备份131
(2)准备工作:两台服务器192.168.17.129和192.168.17.131(都含keepalived和nginx)
(3)配置keepalived.conf
Global_defs全局定义
Vrrp_script chk_http_port检测脚本
Vrrp_instance V1_1虚拟机(state[master/backup]/网卡/id[相同]/优先级[master高]/虚拟ip)
主服务器/usr/local/src放nginx检测脚本
启动keepalived、nginx

四、原理解析
1.原理
Master进程(管理监控workers)
一个master管多个worker进程
每个worker争抢多个client

2.master-worker好处
nginx -s reload热部署
各worker独立，要给出问题，其他worker独立继续争抢不会造成服务中断

3.最合适的worker数量
Nginx有Io多路复用机制
worker数=cpu数

4.worker连接数
发送请求占用worker连接数为2个或4个
Nginx一个master，四个worker(各worker支持最大连接数1024)，则支持的最大并发数为:4*1024/2或4*1024/4
静态访问worker_connections*worker_processes/2
反向代理worker_connections*worker_processes/4
