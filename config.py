# coding: utf-8
import os

basedir = os.path.abspath(os.path.dirname(__file__))
SQLALCHEMY_DATABASE_URI = 'sqlite:///' + os.path.join(basedir, 'app.db')
SQLALCHEMY_MIGRATE_REPO = os.path.join(basedir, 'db_repository')

CSRF_ENABLED = True
SECRET_KEY = '\xb4\x92\x86\xa9!\xb3\xa4%\xa6\xcf\x0e\x82\xe6\x7f\xb7'

OPENID_PROVIDERS = [
    { 'name': 'OpenID', 'url': 'http://sunshine.openid.org.cn' }]

'''
问题一：

ssl.SSLError
SSLError: [SSL: UNKNOWN_PROTOCOL] unknown protocol (_ssl.c:590)
解决方案： 当不使用app.config['MAIL_USE_SSL'] = False时，一定要把邮件端口号设置为app.config['MAIL_PORT'] = '25'。如果启用了ssl,那么把端口号设置为465！

可能会遇到这样的错误：

smtplib.SMTPAuthenticationError
SMTPAuthenticationError: (530, 'Error: A secure connection is requiered(such as ssl). More information at http://service.mail.qq.com/cgi-bin/help?id=28')
从错误提示信息可以看到需要启用ssl协议。但请记，启用ssl协议，一定要把相应的端口号改为465，否则你有回到上一个错误。 当然安全的链接并不只有一个。我们可以使用app.config['MAIL_USE_TLS'] = True.也就是TLS协议，但是此时要记住端口号要改为25！！！

此处只针对qq邮箱。首先我们要开启SMTP服务，开启的过程中会得到一个授权码。这个授权码就是app.config['MAIL_PASSWORD'] = 'nwntuhwdkrrbbbbe'.而不是你认为的qq密码。一定要切记。

最后简单的总结下：SSL协议搭配端口号465，TSL协议搭配端口号25。不论使用哪个协议，都要打开SMTP服务。哎，总之是一把辛酸泪。
'''

# mail server settings
MAIL_SERVER = 'smtp.qq.com'
MAIL_PORT = 465
MAIL_USE_TLS = False
MAIL_USE_SSL = True
MAIL_USERNAME = 'balin1991@qq.com'
MAIL_PASSWORD = 'kyotlfiapffljdfc'

# administrator list
ADMINS = ['balin1991@qq.com']

# pagination
POSTS_PER_PAGE = 3

# whoosh_search
WHOOSH_BASE = os.path.join(basedir, 'search.db')
MAX_SEARCH_RESULTS = 50
