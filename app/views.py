#!/usr/bin/env python
# encoding: utf-8

from app import app

@app.route('/')
@app.route('/index')
def index():
    return '你好，世界！'
