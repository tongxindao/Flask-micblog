# encoding: utf-8
import os

basedir = os.path.abspath(os.path.dirname(__file__))

if os.environ.get('DATABASE_URL') is None:
    SQLALCHEMY_DATABASE_URI = 'sqlite:///' + os.path.join(basedir, 'app.db')
else:
    SQLALCHEMY_DATABASE_URI = os.environ['DATABASE_URL']

SQLALCHEMY_MIGRATE_REPO = os.path.join(basedir, 'db_repository')

CSRF_ENABLED = True # 配置激活跨站点请求保护
SECRET_KEY = YourSECRETKEY # SECRET_KEY 配置仅仅当 CSRF 激活的时候才需要，它是用来建立一个加密的令牌，用于验证一个表单。

OPENID_PROVIDERS = [
        { 'name': 'OpenID', 'url': 'youropenidprovider' }]

# mail server settings
MAIL_SERVER = 'smtp.youremail.com'
MAIL_PORT = 465
MAIL_USE_TLS = False
MAIL_USE_SSL = True
MAIL_USERNAME = 'yourname@email.com'
MAIL_PASSWORD = 'youremailpassword'

# administrator list
ADMINS = ['yourname@email.com']

# pagination
POSTS_PER_PAGE = 3

# whoosh_search
WHOOSH_BASE = os.path.join(basedir, 'search.db')
MAX_SEARCH_RESULTS = 50

# available languages
LANGUAGES = {
    'en': 'English',
    'zh': 'Chinese',
}

# baidu translation service
BAIDU_TRANSLATOR_APP_ID = yourbaiduappid
BAIDU_TRANSLATOR_SECRET_KEY = yourbaidusecretkey

'''
Flask-SQLAlchemy 文档提到了 get_debug_queries 函数，它返回在请求执行期间所有的查询的列表。
'''
SQLALCHEMY_RECORD_QUERIES = True

# 数据库查询时间阈值（以秒为单位）
DATABASE_QUERY_TIMEOUT = 0.5
