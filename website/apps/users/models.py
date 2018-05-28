# -*- coding: utf-8 -*-


from django.db import models
from django.contrib.auth.models import AbstractUser
from datetime import datetime


class UserProfile(AbstractUser):
    nick_name = models.CharField(max_length=50, verbose_name='昵称', default='')
    birthday = models.DateField(verbose_name='生日', null=True, blank=True)
    gender = models.CharField(choices=(("male", "男"), ("female", "女")), default='female', max_length=6)
    address = models.CharField(max_length=100, default='')
    mobile = models.CharField(max_length=11, null=True, blank=True)
    image = models.ImageField(upload_to='image/%Y/%m', default='image/default.png', max_length=100)

    class Meta:
        verbose_name = '用户信息'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.username


class EmailVerifyRecord(models.Model):
    code = models.CharField(max_length=20, verbose_name='验证码')
    email = models.EmailField(max_length=50, verbose_name='邮箱')
    send_type = models.CharField(choices=(("register", "注册"), ("forget", "找回密码"), ("update_email", "修改邮箱验证码")),
                                 max_length=30, verbose_name='验证码类型')
    send_time = models.DateTimeField(default=datetime.now, verbose_name='发送时间')

    class Meta:
        verbose_name = '邮箱验证码'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return '{0}《{1}》'.format(self.code, self.email)


class Board(models.Model):
    name = models.CharField(max_length=20, verbose_name='板块名称')
    add_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')

    class Meta:
        verbose_name = '板块'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.name


class Post(models.Model):
    title = models.CharField(max_length=20, verbose_name='标题')
    content = models.TextField(verbose_name="帖子详情", default='')
    comment_num = models.IntegerField(default=0, verbose_name='评论数')
    read_num = models.IntegerField(default=0, verbose_name='阅读数')
    is_essence = models.BooleanField(default=False, verbose_name='加精')
    add_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')
    board = models.ForeignKey(Board, on_delete=models.CASCADE, verbose_name='板块')
    author = models.ForeignKey(UserProfile, default='', on_delete=models.CASCADE, verbose_name='作者')

    class Meta:
        verbose_name = '帖子'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.title


class Banner(models.Model):
    title = models.CharField(max_length=100, verbose_name='标题')
    image = models.ImageField(upload_to='banner/%Y/%m', verbose_name='轮播图', max_length=100)
    index = models.IntegerField(default=100, verbose_name='顺序')
    add_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')
    tie = models.ForeignKey(Post, on_delete=models.CASCADE, default='', verbose_name='帖子')

    class Meta:
        verbose_name = '轮播图'
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return self.title


class Comment(models.Model):
    content = models.TextField(verbose_name="评论详情", default='')
    add_time = models.DateTimeField(default=datetime.now, verbose_name='添加时间')
    post = models.ForeignKey(Post, on_delete=models.CASCADE, verbose_name='帖子')
    author = models.ForeignKey(UserProfile, on_delete=models.CASCADE, verbose_name='作者')

    class Meta:
        verbose_name = '评论'
        verbose_name_plural = verbose_name
