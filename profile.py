#/usr/bin/env python
#encoding: utf-8
from werkzeug.contrib.profiler import ProfilerMiddleware
from app import app

'''
在这个报告中每一行的含义如下:

ncalls : 这个函数被调用的次数。
tottime : 在这个函数中所花费所有时间。
percall : 是 tottime 除以 ncalls 的结果。
cumtime : 花费在这个函数以及任何它调用的函数的时间。
percall : cumtime 除以 ncalls。
filename:lineno(function) : 函数名以及位置。
'''

app.config['PROFILE'] = True
app.wsgi_app = ProfilerMiddleware(app.wsgi_app, restrictions = [30])
app.run(debug = True)
