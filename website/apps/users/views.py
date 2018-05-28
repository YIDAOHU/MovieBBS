# -*- coding: UTF-8 –*-

from django.shortcuts import render, render_to_response
from django.views.generic.base import View
from .forms import RegisterForm, LoginForm, ForgetForm, ModifyPwdForm, AddTieForm, \
    CommentForm, UserInfoForm, UploadImageForm
from .models import UserProfile, EmailVerifyRecord, Board, Post, Comment, Banner
from django.contrib.auth.hashers import make_password
from utils.email_send import send_register_email
from django.contrib.auth import authenticate, login, logout
from django.core.urlresolvers import reverse
from django.http import HttpResponseRedirect, HttpResponse
from django.contrib.auth.backends import ModelBackend
from django.db.models import Q
from pure_pagination import Paginator, PageNotAnInteger
import json
from utils.mixin_utils import LoginRequiredMixin


class CustomBackend(ModelBackend):
    """
    使用用户和邮箱登录
    """
    def authenticate(self, username=None, password=None, **kwargs):
        try:
            # 不希望用户存在两个，get只能有一个。两个是get失败的一种原因 Q为使用并集查询
            user = UserProfile.objects.get(Q(username=username) | Q(email=username))
            # django的后台中密码加密：所以不能password==password
            # UserProfile继承的AbstractUser中有def check_password(self, raw_password):
            if user.check_password(password):
                return user
        except Exception as e:
            return None


class RegisterView(View):
    """
    用户注册
    """
    def get(self, request):
        register_form = RegisterForm()
        return render(request, 'register.html', {"register_form": register_form})

    def post(self, request):
        register_form = RegisterForm(request.POST)
        if register_form.is_valid():
            email = request.POST.get("email", "")
            if UserProfile.objects.filter(email=email):
                return render(request, 'register.html', {"msg": "用户已经存在", "register_form": register_form})
            pass_word = request.POST.get("password", "")
            user = UserProfile()
            user.email = email
            user.is_active = False
            user.password = make_password(pass_word)
            user.save()

            send_register_email(email, "register")
            return render(request, 'login.html')
        else:
            return render(request, 'register.html', {"register_form": register_form})


class ActiveView(View):
    """
    用户激活
    """
    def get(self, request, active_code):
        all_records = EmailVerifyRecord.objects.filter(code=active_code)
        if all_records:
            for record in all_records:
                email = record.email
                user = UserProfile.objects.get(email=email)
                user.is_active = True
                user.save()
        else:
            return render(request, 'active_fail.html')
        return render(request, 'login.html')


class LoginView(View):
    """
    用户登录
    """
    def get(self, request):
        return render(request, 'login.html')

    def post(self, request):
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            user_name = request.POST.get("username", "")
            pass_word = request.POST.get("password", "")
            user = authenticate(username=user_name, password=pass_word)
            if user is not None:
                if user.is_active:
                    login(request, user)
                    return HttpResponseRedirect(reverse("index"))
                else:
                    return render(request, 'login.html', {"msg": "用户没有激活"})
            else:
                return render(request, 'login.html', {"msg": "用户名或密码错误"})
        else:
            return render(request, 'login.html', {"login_form": login_form})


class LogoutView(View):
    """
    注销
    """
    def get(self, request):
        # django自带的logout
        logout(request)
        # 重定向到首页,
        return HttpResponseRedirect(reverse("index"))


class ForgetView(View):
    """
    忘记密码
    """
    def get(self, request):
        forget_form = ForgetForm()
        return render(request, 'forgetpwd.html', {"forget_form": forget_form})

    def post(self, request):
        forget_form = ForgetForm(request.POST)
        if forget_form.is_valid():
            email = request.POST.get("email", "")
            send_register_email(email, "forget")
            return render(request, 'send_success.html')
        else:
            return render(request, 'forgetpwd.html', {"forget_form": forget_form})


class ResetView(View):
    """
    获取重置密码链接
    """
    def get(self, request, active_code):
        all_records = EmailVerifyRecord.objects.filter(code=active_code)
        if all_records:
            for record in all_records:
                email = record.email
                return render(request, 'password_reset.html', {"email": email})
        else:
            return render(request, 'active_fail.html')
        return render(request, 'login.html')


class ModifyPwdView(View):
    """
    修改密码
    """
    def post(self, request):
        modify_form = ModifyPwdForm(request.POST)
        if modify_form.is_valid():
            pwd1 = request.POST.get("password1", "")
            pwd2 = request.POST.get("password2", "")
            email = request.POST.get("email", "")
            if pwd1 != pwd2:
                return render(request, 'password_reset.html', {"email": email, "msg": "密码不一致"})
            user = UserProfile.objects.get(email=email)
            user.password = make_password(pwd1)
            user.save()
            return render(request, 'login.html')
        else:
            email = request.POST.get("email", "")
            return render(request, 'password_reset.html', {"email": email, "modify_form": modify_form})


class UserInfoView(LoginRequiredMixin, View):
    """
    个人中心
    """

    def get(self, request):
        return render(request, "usercenter-info.html", {})

    def post(self, request):
        # 需要指明instance,不然无法修改,而是新增用户
        user_info_form = UserInfoForm(request.POST, instance=request.user)
        if user_info_form.is_valid():
            user_info_form.save()
            return HttpResponse('{"status":"success"}', content_type='application/json')
        else:
            # 通过json的dumps方法把字典转换为json字符串
            return HttpResponse(json.dumps(user_info_form.errors), content_type='application/json')


class UploadImageView(LoginRequiredMixin, View):
    """
    修改头像
    """

    def post(self, request):
        # 这时候用户上传的文件就已经被保存到imageform了,为modelform添加instance值直接保存
        image_form = UploadImageForm(request.POST, request.FILES, instance=request.user)
        if image_form.is_valid():
            image_form.save()
            return HttpResponse('{"status":"success"}', content_type='application/json')
        else:
            return HttpResponse('{"status":"fail"}', content_type='application/json')


class UpdatePwdView(LoginRequiredMixin, View):
    """
    个人中心修改密码
    """

    def post(self, request):
        modify_form = ModifyPwdForm(request.POST)
        if modify_form.is_valid():
            pwd1 = request.POST.get("password1", "")
            pwd2 = request.POST.get("password2", "")
            # 如果两次密码不相等,返回错误信息
            if pwd1 != pwd2:
                return HttpResponse('{"status":"fail", "msg":"密码不一致"}', content_type='application/json')
            # 如果密码一致
            user = request.user
            # 加密成密文
            user.password = make_password(pwd2)
            # save保存到数据库
            user.save()
            return HttpResponse('{"status":"success"}', content_type='application/json')
        else:
            return HttpResponse(json.dumps(modify_form.errors), content_type='application/json')


class SendEmailCodeView(LoginRequiredMixin, View):
    """
    发送邮箱验证码
    """
    def get(self, request):
        # 取出需要发送的邮件
        email = request.GET.get("email", "")

        # 不能是已注册的邮箱
        if UserProfile.objects.filter(email=email):
            return HttpResponse('{"email":"邮箱已经存在"}', content_type='application/json')
        send_register_email(email, "update_email")
        return HttpResponse('{"status":"success"}', content_type='application/json')


class UpdateEmailView(LoginRequiredMixin, View):
    """
    修改邮箱
    """

    def post(self, request):
        email = request.POST.get("email", "")
        code = request.POST.get("code", "")

        existed_records = EmailVerifyRecord.objects.filter(email=email, code=code, send_type='update_email')
        if existed_records:
            user = request.user
            user.email = email
            user.save()
            return HttpResponse('{"status":"success"}', content_type='application/json')
        else:
            return HttpResponse('{"email":"验证码无效"}', content_type='application/json')


class IndexView(View):
    """
    主页
    """
    def get(self, request):
        banners = Banner.objects.all()
        boards = Board.objects.all()
        ties = Post.objects.all().order_by("-add_time")
        # 搜索功能
        search_keywords = request.GET.get('keywords', '')
        if search_keywords:
            # 在title字段进行操作,做like语句的操作。i代表不区分大小写
            # or操作使用Q
            ties = ties.filter(Q(title__icontains=search_keywords) | Q(content__icontains=search_keywords))
        sort = request.GET.get('sort', "")
        if sort:
            if sort == "essence":
                ties = ties.filter(is_essence=True)
            elif sort == "read":
                ties = ties.order_by("-read_num")
            elif sort == "comment":
                ties = ties.order_by("-comment_num")
        current_id = request.GET.get('current_id', "")
        if current_id:
            ties = ties.filter(board_id=int(current_id))

        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(ties, 8, request=request)
        ties = p.page(page)
        return render(request, 'front_index.html', {"boards": boards,
                                                    "ties": ties,
                                                    "sort": sort,
                                                    'current_id': current_id,
                                                    'banners': banners
                                                    })


class AddTieView(View):
    """
    发布帖子
    """
    def get(self, request):
        if not request.user.is_authenticated():
            return render(request, 'login.html')
        boards = Board.objects.all()
        return render(request, 'front_apost.html', {"boards": boards})

    def post(self, request):
        add_form = AddTieForm(request.POST)
        if add_form.is_valid():
            title = request.POST.get("title", "")
            content = request.POST.get("content", "")
            board_id = request.POST.get("board_id", "")

            tie = Post(title=title, author=request.user, content=content, board_id=board_id)
            tie.save()
            return HttpResponseRedirect(reverse("index"))
        else:
            return HttpResponse('重新发送')


class TieDetailView(View):
    """
    帖子详情页
    """
    def get(self, request, tie_id):
        tie = Post.objects.get(id=tie_id)
        tie.read_num += 1
        tie.save()
        comments = Comment.objects.filter(post_id=tie_id).order_by('-add_time')
        return render(request, 'post_detail.html', {"tie": tie, "comments": comments})


class CommentView(View):
    """
    评论
    """
    def post(self, request):
        if not request.user.is_authenticated():
            return render(request, 'login.html')
        add_form = CommentForm(request.POST)
        if add_form.is_valid():
            content = request.POST.get("content", "")
            tie_id = request.POST.get("tie_id", "")
            comment = Comment(author=request.user, content=content, post_id=tie_id)
            comment.save()
            tie = Post.objects.get(id=tie_id)
            tie.comment_num += 1
            tie.save()
            return HttpResponseRedirect(reverse("detail", args=(tie_id,)))
        else:
            return HttpResponse('重新评论')


class PersonalView(View):
    """
    我的帖子
    """
    def get(self, request):
        ties = Post.objects.filter(author=request.user).order_by("-add_time")
        # 搜索功能
        search_keywords = request.GET.get('keywords', '')
        if search_keywords:
            # 在title字段进行操作,做like语句的操作。i代表不区分大小写
            # or操作使用Q
            ties = ties.filter(Q(title__icontains=search_keywords) | Q(content__icontains=search_keywords))

        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(ties, 4, request=request)
        ties = p.page(page)
        return render(request, 'my_ties.html', {"ties": ties})


class MyCommentView(View):
    """
    我的评论
    """
    def get(self, request):
        comments = Comment.objects.filter(author=request.user).order_by('-add_time')
        return render(request, 'my_comment.html', {"comments": comments})


def page_not_found(request):
    response = render_to_response('404.html', {})
    response.status_code = 404
    return response


def page_error(request):
    response = render_to_response('500.html', {})
    response.status_code = 500
    return response
