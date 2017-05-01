# coding: utf-8
import os
from flask_login import LoginManager
from flask_openid import OpenID
from config import basedir, ADMINS, MAIL_SERVER, MAIL_PORT, MAIL_USERNAME, MAIL_PASSWORD

from flask import Flask
from flask_sqlalchemy import SQLAlchemy

from flask_mail import Mail

from momentjs import momentjs

from flask_babel import Babel, lazy_gettext

from flask.json import JSONEncoder

app = Flask(__name__)
app.config.from_object('config')
db = SQLAlchemy(app)

lm = LoginManager()
lm.init_app(app)
lm.login_view = 'login'
lm.login_message = lazy_gettext('请您先登陆。')

oid = OpenID(app, os.path.join(basedir, 'tmp'))

mail = Mail(app)

babel = Babel(app)

if not app.debug:
    import logging
    from logging.handlers import RotatingFileHandler
    file_handler = RotatingFileHandler('tmp/microblog.log', 'a', 1 * 1024 * 1024, 10)
    file_handler.setLevel(logging.INFO)
    file_handler.setFormatter(logging.Formatter('%(asctime)s %(levelname)s: %(message)s [in %(pathname)s:%(lineno)d]'))
    app.logger.addHandler(file_handler)
    app.logger.setLevel(logging.INFO)
    app.logger.info('microblog startup')

app.jinja_env.globals['momentjs'] = momentjs

babel = Babel(app)

class CustomJSONEncoder(JSONEncoder):
    def default(self, obj):
        from speaklater import is_lazy_string
        if is_lazy_string(obj):
            try:
                return unicode(obj) # python 2
            except NameError:
                return str(obj) # python 3
        return super(CustomJSONEncoder, self).default(obj)

app.json_encoder = CustomJSONEncoder

from app import views, models
