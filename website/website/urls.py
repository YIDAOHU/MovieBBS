# -*- coding: UTF-8 –*-

"""website URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.views.static import serve
import xadmin
from website.settings import MEDIA_ROOT, STATIC_ROOT
from users.views import RegisterView, LoginView, IndexView, ForgetView, ActiveView, ResetView,\
    ModifyPwdView, LogoutView, AddTieView, TieDetailView, CommentView

urlpatterns = [
    # 后台
    url(r'^xadmin/', xadmin.site.urls),
    # 首页
    url(r'^$', IndexView.as_view(), name='index'),
    # 注册
    url(r'^register/$', RegisterView.as_view(), name='register'),
    # 激活用户
    url(r'^active/(?P<active_code>.*)/$', ActiveView.as_view(), name='user_active'),
    # 登录
    url(r'^login/$', LoginView.as_view(), name='login'),
    # 注销
    url(r'^logout/$', LogoutView.as_view(), name='logout'),
    # 忘记密码
    url(r'^forget/$', ForgetView.as_view(), name='forget_pwd'),
    url(r'^reset/(?P<active_code>.*)/$', ResetView.as_view(), name='reset_pwd'),
    url(r'^modify_pwd/$', ModifyPwdView.as_view(), name='modify_pwd'),

    # 添加帖子
    url(r'^add_tie/$', AddTieView.as_view(), name='add_tie'),
    # 帖子详情
    url(r'^detail/(?P<tie_id>\d+)/$', TieDetailView.as_view(), name='detail'),
    # 添加评论
    url(r'^comment/$', CommentView.as_view(), name='comment'),

    # 配置上传文件的访问处理函数
    url(r'^media/(?P<path>.*)$', serve, {"document_root": MEDIA_ROOT}),
    # 静态文件
    url(r'^static/(?P<path>.*)$', serve, {"document_root": STATIC_ROOT}),
    # 验证码相关url
    url(r'^captcha/', include('captcha.urls')),
    # 富文本相关url
    url(r'^ueditor/', include('ueditor.urls')),
    # 个人信息相关url
    url(r'^users/', include('users.urls', namespace='users')),

]


# 全局404和500页面
handler404 = 'users.views.page_not_found'
handler500 = 'users.views.page_error'
