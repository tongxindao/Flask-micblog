#!/usr/bin/env python
# encoding: utf-8

from flask import render_template, flash, redirect, session, url_for, request, g
from flask_login import login_user, logout_user, current_user, login_required
from app import app, db, lm, oid
from .forms import LoginForm
from .models import User, ROLE_USER, ROLE_ADMIN

'''
以下三行代码可解决：UnicodeDecodeError: 'ascii' codec can't decode byte 0xe4 in position 0: ordinal not in range(128)
'''

import sys
reload(sys)
sys.setdefaultencoding('utf8')

@app.route('/')
@app.route('/index')
@login_required # 我们添加了login_required 装饰器。这确保了这页只被已经登录的用户看到。
def index():
    user = g.user
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

@lm.user_loader
def load_user(id):
    return User.query.get(int(id))

@app.before_request
def before_request():
    g.user = current_user
'''
全局变量 current_user 是被 Flask-Login 设置的，因此我们只需要把它赋给 g.user ，让访问起来更方便。有了这个，所有请求将会访问到登录用户，即使在模版里。
'''

# oid.loginhandle 告诉 Flask-OpenID 这是我们的登录视图函数
@app.route('/login', methods = ['GET', 'POST'])
@oid.loginhandler
def login():# Flask 中的 g 全局变量是一个在请求生命周期中用来存储和共享数据。
    if g.user is not None and g.user.is_authenticated:
    # flask_login 0.3之后将authenticated从函数更改为属性，把g.user.is_authenticated() 修改为g.user.is_authenticated就行了。
        return redirect(url_for('index'))
    form = LoginForm()
    if form.validate_on_submit():
        flash('登陆请求的OpenID = "' + form.openid.data + '", 记住我 = ' + str(form.remember_me.data))
        session['remember_me'] = form.remember_me.data
        return oid.try_login(form.openid.data, ask_for = ['nickname', 'email'])
    return render_template('login.html',
        title = '登陆',
        form = form,
        providers = app.config['OPENID_PROVIDERS'])

@oid.after_login
def after_login(resp):
    if resp.email is None or resp.email == "":
        flash('无效登陆，请重试！')
        return redirect(url_for('login'))
    user = User.query.filter_by(email = resp.email).first()
    if user is None:
        nickname = resp.nickname
        if nickname is None or nickname == "":
            nickname = resp.email.split('@')[0]
        user = User(nickname = nickname, email = resp.email, role = ROLE_USER)
        db.session.add(user)
        db.session.commit()
    remember_me = False
    if 'remember_me' in session:
        remember_me = session['remember_me']
        session.pop('remember_me', None)
    login_user(user, remember = remember_me)
    return redirect(request.args.get('next') or url_for('index'))

@app.route('/logout')
def logout():
    logout_user()
    return redirect(url_for('index'))
