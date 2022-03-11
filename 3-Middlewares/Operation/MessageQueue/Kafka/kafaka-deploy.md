# Kafka

```
# 解压
tar zxvf FileName.tar.gz

# 启动ZK
kafka目录>nohup  ./bin/zookeeper-server-start.sh ./config/zookeeper.properties &
ps -ef | grep zookeeper

# 关防火墙
systemctl disable firewalld

# 改kafka配置(去掉注释)
vi config/server.properties
listeners=PLAINTEXT://:9092
advertised.listeners=PLAINTEXT://127.0.0.1:9092 

# 启动kafka
kafka目录>nohup ./bin/kafka-server-start.sh ./config/server.properties &
ps -ef | grep kafka

# 查看topic列表即可
./bin/kafka-topics.sh --list --bootstrap-server localhost:9092
```