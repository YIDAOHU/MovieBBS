# -*- coding: UTF-8 –*-

from django.conf.urls import url
from .views import UserInfoView, UploadImageView, UpdatePwdView, SendEmailCodeView, \
    UpdateEmailView, MyCommentView, PersonalView

urlpatterns = [
    # 用户信息
    url(r'^info/$', UserInfoView.as_view(), name="user_info"),
    # 用户头像上传
    url('image/upload/', UploadImageView.as_view(), name="image_upload"),
    # 用户个人中心修改密码
    url('update/pwd/', UpdatePwdView.as_view(), name="update_pwd"),
    # 专用于发送验证码的
    url('sendemail_code/', SendEmailCodeView.as_view(), name="sendemail_code"),
    # 我的评论
    url(r'^comment/$', MyCommentView.as_view(), name='comment'),
    # 我的帖子
    url(r'^personal/$', PersonalView.as_view(), name='personal'),
    # 更改邮箱
    url('update_email/', UpdateEmailView.as_view(), name="update_email")
]