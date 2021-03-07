# 1 RDD(spark core)

# 程序中
from pyspark import SparkConf,SparkContext 
conf = SparkConf().setMaster('local').setAppName('xxApp') 
sc = SparkContext(conf=conf)
# pyspark中
# 直接有sc

# 1.1创建
# 数据抽象RDD
# 文件系统
## 本地
xxdata = sc.textFile("file:///dir/x.txt")   # 生成RDD(一行字符=一个RDD元素)
## HDFS
xxdata = sc.textFile("hdfs://localhost:9000/dir/x.txt")
xxdata = sc.textFile("/dir/x.txt")
xxdata = sc.textFile(x.txt")

# 并行集合
sc.parallelize(xxarray)

# HBase
# 四维坐标定位:行键/列族/列限定符/时间戳
xxdata = sc.newAPIHadoopRDD()

# 1.2 操作
# 转换:filter/map/flatMap
# 键值对的转换: groupByKey/reduceByKey/keys/values/sortByKey/mapValues/join/combineByKey/sortBy(func)
# 行动:count/collect/first/take(n)/reduce(func)/foreach(func)
# 惰性机制:行动会触发计算

# 1.3 持节化
# persist(MEMORY_ONLY) 相当于cache()
# persist(MEMORY_AND_DISK)
# unpersist()

# 1.4 分区
# 默认分区数
# 本地=cpu数，local[N]=N，Mesos=8，Standalone/Yarn=max(cpu数,2)
xxdata = sc.textFile(xxfile,分区数)
xxdata = sc.parallelize(xxarray,分区数)
xxdata.repartition(分区数)
# 分区方法(HashPartition/自定义/RangePartition)
xxdata.partitionBy()

# 2. SparkSQL

# 发展
# 初始: Hive:SQL on Hadoop / Shark:SQL on Spark
# 发展: Spark SQL / Hive on Spark

# 数据抽象DataFrame
spark = SparkSession.builder.config(conf=SparkConf()).getOrCreate()

# 读取
spark.read.format('text').load('xxfile.txt')
spark.read.text('xxfile.txt')
spark.read.format('json').load('xxfile.json')
spark.read.json('xxfile.json')
spark.read.format('parquet').load('xxfile.parquet')
spark.read.parquet('xxfile.parquet')

# 写入
spark.write.format('text').load('xxfile.txt')
spark.write.text('xxfile.txt')
spark.write.format('json').load('xxfile.json')
spark.write.json('xxfile.json')
spark.write.format('parquet').load('xxfile.parquet')
spark.write.parquet('xxfile.parquet')

# 操作
printSchema/select/filter/groupBy/sort

# 通过拼装表头记录来新建
schema = StructType([structField()...])
xxRecord = Row(...)
xxschema = spark.createDataFrame(xxRecord,schema)
xxschema.createOrReplaceTempView('xxView')
results = spark.sql(SQL语句)
results.show()

# 3. Spark Streaming
# 实时采集(不同框架日志数据)/实时计算/实时查询(主动推送)

# 输入源
# 套接字流/文件流/kafka输入流

# 数据抽象DStream
ssc = StreamingContext(sc,1)

# 创建输入源
lines = ssc.textFileStream(xxfile)
lines = ssc.socketTextStream(...)
lines = ssc.queueStream(...)
kvs = kafka.createStream(ssc,...)

# 转换操作(无状态)
map(func)/flatMap(func)/filter(func)/repartition(num)/reduce(func)/count/union(stream)
/CountByValue/reduceByKey(func)/join(stream)/cogroup(stream)/transform(func)

# 转换操作(有状态)
window/CountByWindow/reduceByWindow/CountByValueAndWindow
updateStateByKey
# 4. Structured Streaming

# 类型:微批处理(默认)/持续处理模式

# 思想:实时数据流=不断加数据的表；流计算=静态表上批处理查询(增量查询)

# 输入源
# 文件/kafka/socket/rate

# 数据抽象DataFrame/DataSet
lines = spark.readStream.format('socket').option().load()
lines = spark.readStream.format('rate').option().load()
lines = spark.readStream.format('json').schema().option().load()
lines = spark.readStream.format('kafka').option().load()

# 流计算
# 输出模式append/complete/update
# 输出格式console/file/kafka/foreach/memory
query = lines.writeStream.outputMode('complete').format('console').trigger().start()

# DataSet操作
#select/where/groupBy/map/filter/flatMap

# 5. Spark MLlib

# 离散数据-监督学习:分类/逻辑回归/随即森林/SVM/决策树/GBT/朴素贝叶斯/多层感知机/onevsrest

# 离散数据-非监督学习:聚类/k-means/高斯混合/LDA/幂迭代聚类/二分k-means

# 连续数据-监督学习:回归/线性回归/决策树/随即森林/GBT/AFT生存回归/保序回归

# 连续数据-非监督学习:降维/矩阵分解/PCA/SVD/ALS/WLS

# spark.mllib基于RDD
# spark.ml基于DataFrame(提供pipeline)

# pipeline
# transformer把DataFrame变成带标签的DataFrame
# estimator学习算法/训练算法的概念抽象(实现fit())
# parameter设置transformer、estimator参数
# 定义pipelinestage->transformer/estimator有序组织成pipeline

# 流程
pipeline = Pipeline(stages=算法,...)
model = pipeline.fit(training)
prediction = model.transform(test)

# 操作
# 特征转换/标签索引转化
# stringIndexer/IndexToString/OneHotEncoder/VectorIndexer