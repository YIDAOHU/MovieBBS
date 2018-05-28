# -*- coding: UTF-8 –*-

from django import forms
from captcha.fields import CaptchaField
from users.models import UserProfile


class LoginForm(forms.Form):
    username = forms.CharField(required=True)
    password = forms.CharField(required=True)


class RegisterForm(forms.Form):
    email = forms.EmailField(required=True)
    password = forms.CharField(required=True, min_length=5)
    # 验证码,参数：错误信息
    captcha = CaptchaField(error_messages={'invalid': '验证码错误!'})


class ForgetForm(forms.Form):
    email = forms.EmailField(required=True)
    captcha = CaptchaField(error_messages={'invalid': '验证码错误!'})


class ModifyPwdForm(forms.Form):

    password1 = forms.CharField(required=True, min_length=5)
    password2 = forms.CharField(required=True, min_length=5)


class AddTieForm(forms.Form):
    title = forms.CharField(required=True)
    content = forms.CharField(required=True)
    board_id = forms.CharField(required=True)


class CommentForm(forms.Form):
    content = forms.CharField(required=True)


class UserInfoForm(forms.ModelForm):
    """
    用于个人中心修改个人信息
    """
    class Meta:
        model = UserProfile
        fields = ['nick_name', 'gender', 'birthday', 'address', 'mobile']


# 用于文件上传，修改头像
class UploadImageForm(forms.ModelForm):

    class Meta:
        model = UserProfile
        fields = ['image']
