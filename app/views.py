#!/usr/bin/env python
# encoding: utf-8

from flask import render_template
from app import app

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
