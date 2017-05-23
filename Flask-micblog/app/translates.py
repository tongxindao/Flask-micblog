#/usr/bin/env python
# encoding: utf-8

try:
    import httplib # Python 2
except ImportError:
    import http.client as httplib # Python 3

from flask_babel import gettext
from config import BAIDU_TRANSLATOR_APP_ID,BAIDU_TRANSLATOR_SECRET_KEY
import json
import random
import md5
import sys
import urllib

reload(sys)
sys.setdefaultencoding('utf-8')

def baidu_translate(text, sourceLang, destLang):
    appid = BAIDU_TRANSLATOR_APP_ID
    secretKey = BAIDU_TRANSLATOR_SECRET_KEY
    if appid == "" or secretKey == "":
        return gettext('错误：未配置翻译服务。')

    httpClient = None
    myurl = '/api/trans/vip/translate'
    q = text
    salt = random.randint(32768, 65536)
    sign = appid+q+str(salt)+secretKey
    m1 = md5.new()
    m1.update(sign)
    sign = m1.hexdigest()
    '''
    q.encode('utf8')中q后面的encode('utf8')可解决如下问题：
        myurl = myurl+'?appid='+appid+'&q='+urllib.quote(q)+'&from='+sourceLang+'&to='+destLang+'&salt='+str(salt)+'&sign='+sign
  File "/usr/lib/python2.7/urllib.py", line 1299, in quote
    return ''.join(map(quoter, s))
KeyError: u'\u518d'
    从实际检查来看，英译中在语法正确的情况下问题不大，而中译英在终端显示正常而在网页端则返回null就不知是什么原因了。
    '''
    myurl = myurl+'?appid='+appid+'&q='+urllib.quote(q.encode('utf8'))+'&from='+sourceLang+'&to='+destLang+'&salt='+str(salt)+'&sign='+sign

    try:
        httpClient = httplib.HTTPConnection('api.fanyi.baidu.com')
        httpClient.request('GET', myurl)
        #response是HTTPResponse对象
        response = httpClient.getresponse()
        result = response.read()
        data = json.loads(result)
        return data["trans_result"][0]["dst"]
    except Exception, e:
        print e
    finally:
        if httpClient:
            httpClient.close()
