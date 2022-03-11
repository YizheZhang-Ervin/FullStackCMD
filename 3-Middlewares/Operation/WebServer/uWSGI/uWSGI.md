# uWSGI
- flaskapp.ini放在和app.py同级目录即可

## 使用
```
# 安装
pip install uWSGI

# 用配置文件启动
uwsgi --ini /home/ervin/flaskweb/flaskapp.ini

# 用命令启动
uwsgi --http 0.0.0.0:8080 --wsgi-file app.py --callable app --master
```