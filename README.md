# Django实现电影论坛<br>
## 主要实现功能: 注册，登陆，发帖，评论帖子，xadmin实现后台提供帖子管理，板块管理等等<br>

## 首页(搜索，筛选）<br>
![图片](https://images2018.cnblogs.com/blog/1242176/201805/1242176-20180528133534815-1944838436.png)<br>
## 发布帖子<br>
![图片](https://images2018.cnblogs.com/blog/1242176/201805/1242176-20180528143459782-1139672329.png)<br>
## 帖子详情页(显示帖子具体内容，提供评论）<br>
![图片](https://images2018.cnblogs.com/blog/1242176/201805/1242176-20180528133658463-1819913304.png)<br>
## 个人信息页面(显示个人信息，修改个人信息)<br>
![图片](https://images2018.cnblogs.com/blog/1242176/201805/1242176-20180528133737971-1894786877.png)<br>
## 后台(xadmin实现，管理帖子，设置权限等等）<br>
![图片](https://images2018.cnblogs.com/blog/1242176/201805/1242176-20180528133803606-971195764.png)<br>

## 环境配置：python2.7   pip install -r requirements.txt<br>

## 创建数据库将website.sql文件导入<br>

## 进入项目目录执行如下命令：<br>

### python manage.py collectstatic(关闭了debug需要收集静态文件)<br>

### python manage.py runserver 0.0.0.0：8000<br>

## 打开浏览器输入：http://127.0.0.1:8000<br>

### 说明：后台：http://127.0.0.1:8000/xadmin  用户名：yang  密码：admin23
