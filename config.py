import os

basedir = os.path.abspath(os.path.dirname(__file__))
SQLALCHEMY_DATABASE_URI = 'sqlite:///' + os.path.join(basedir, 'app.db')
SQLALCHEMY_MIGRATE_REPO = os.path.join(basedir, 'db_repository')

CSRF_ENABLED = True
SECRET_KEY = '\xb4\x92\x86\xa9!\xb3\xa4%\xa6\xcf\x0e\x82\xe6\x7f\xb7'

OPENID_PROVIDERS = [
    { 'name': 'Yahoo', 'url': 'https://me.yahoo.com' },
    { 'name': 'OpenID', 'url': 'http://sunshine.openid.org.cn' }]

# mail server settings
MAIL_SERVER = 'localhost'
MAIL_PORT = 25
MAIL_USERNAME = None
MAIL_PASSWORD = None

# administrator list
ADMINS = ['you@mail.com']

# pagination
POSTS_PER_PAGE = 3
