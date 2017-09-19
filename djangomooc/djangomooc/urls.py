# _*_ coding: utf-8 _*_
__author__ = 'tongxindao'

"""djangomooc URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.9/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Add an import:  from blog import urls as blog_urls
    2. Import the include() function: from django.conf.urls import url, include
    3. Add a URL to urlpatterns:  url(r'^blog/', include(blog_urls))
"""
from django.conf.urls import url, include
from django.views.static import serve

import xadmin

from users.views import LoginView, RegisterView, \
    ActiveUserView, ForgetPwdView, ResetView, \
    ModifyPwdView, LogOutView, IndexView

from djangomooc.settings import MEDIA_ROOT\
    #, STATIC_ROOT

urlpatterns = [
    url(r'^xadmin/', xadmin.site.urls),

    url(r'^$', IndexView.as_view(), name="index"),
    url(r'^register/$', RegisterView.as_view(), name="register"),
    url(r'^login/$', LoginView.as_view(), name="login"),
    url(r'^logout/$', LogOutView.as_view(), name="logout"),
    url(r'^captcha/', include('captcha.urls')),
    url(r'^active/(?P<active_code>.*)/$', ActiveUserView.as_view(), name="user_active"),

    # template 中 url 应填写 name 值，否则会报 NoReverseMatch
    url(r'^forget/$', ForgetPwdView.as_view(), name="forget_pwd"),
    url(r'^reset/(?P<reset_code>.*)/$', ResetView.as_view(), name="reset_pwd"),
    url(r'^modify_pwd/$', ModifyPwdView.as_view(), name="modify_pwd"),

    # 课程机构 url 配置
    url(r'^org/', include('organization.urls', namespace="org")),

    # 课程相关 url 配置
    url(r'^course/', include('courses.urls', namespace="course")),

    # 用户相关 url 配置
    url(r'^users/', include('users.urls', namespace="users")),

    # 配置上传文件的访问处理函数
    url(r'^media/(?P<path>.*)$', serve, {"document_root": MEDIA_ROOT}),

    # 当 setting.py 中 DEBUG 为 True 时以下设置将托管静态资源 url
    # url(r'^static/(?P<path>.*)$', serve, {"document_root": STATIC_ROOT}),

    # 富文本相关 url
    url(r'^ueditor/',include('DjangoUeditor.urls' )),
]

# 全局404页面配置
handler404 = 'users.views.page_not_found'
handler500 = 'users.views.page_error'
handler403 = 'users.views.page_no_permission'