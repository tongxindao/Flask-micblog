#!/usr/bin/env python
# encoding: utf-8

from flask import render_template, flash, redirect
from app import app
from .forms import LoginForm

'''
以下三行代码可解决：UnicodeDecodeError: 'ascii' codec can't decode byte 0xe4 in position 0: ordinal not in range(128)
'''

import sys
reload(sys)
sys.setdefaultencoding('utf8')

@app.route('/')
@app.route('/index')
def index():
    user = { 'nickname': '坚果' }
    posts = [
        {
            'author': { 'nickname': '张三' }, 
            'body': '功夫瑜伽这部电影真心不错！'       
        },
        {
            'author': { 'nickname': '李四' }, 
            'body': '北京的PM 2.5还行吧！'       
        }
    ]
    return render_template('index.html', 
        title = '主页',
        user = user,
        posts = posts)

@app.route('/login', methods = ['GET', 'POST'])
def login():
    form = LoginForm()
    if form.validate_on_submit():
        flash('登陆请求的OpenID = "' + form.openid.data + '", remember_me = ' + str(form.remember_me.data))
        return redirect('/index')
    return render_template('login.html',
        title = '登陆',
        form = form,
        providers = app.config['OPENID_PROVIDERS'])
