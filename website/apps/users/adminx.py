# -*- coding: UTF-8 –*-

import xadmin

from .models import EmailVerifyRecord, Banner, Board, Post, Comment
from xadmin import views


class BaseSetting(object):
    enable_theme = True
    use_bootswatch = True


class GlobalSetting(object):
    site_title = '后台管理系统'
    site_footer = 'MOVIE PARADISE'
    menu_style = 'accordion'


class EmailVerifyRecordAdmin(object):
    list_display = ['code', 'email', 'send_type', 'send_time']
    search_fields = ['code', 'email', 'send_type']
    list_filter = ['code', 'email', 'send_type', 'send_time']


class BannerAdmin(object):
    list_display = ['title', 'image', 'add_time']
    search_fields = ['title', 'image', 'index']
    list_filter = ['title', 'image', 'index', 'add_time']


class BoardAdmin(object):
    list_display = ['name', 'add_time']
    search_fields = ['name']
    list_filter = ['name', 'add_time']


class PostAdmin(object):
    list_display = ['title', 'read_num', 'comment_num', 'is_essence', 'board', 'add_time']
    search_fields = ['title', 'board']
    list_filter = ['title', 'board', 'add_time']


class CommentAdmin(object):
    list_display = ['content', 'add_time', 'post', 'author']
    search_fields = ['author', 'post']
    list_filter = ['content', 'add_time']


xadmin.site.register(views.BaseAdminView, BaseSetting)
xadmin.site.register(views.CommAdminView, GlobalSetting)
xadmin.site.register(EmailVerifyRecord, EmailVerifyRecordAdmin)
xadmin.site.register(Banner, BannerAdmin)
xadmin.site.register(Board, BoardAdmin)
xadmin.site.register(Post, PostAdmin)
xadmin.site.register(Comment, CommentAdmin)

