# coding: utf-8
from flask_wtf import FlaskForm
from wtforms import StringField, BooleanField, TextAreaField
from wtforms.validators import DataRequired, Length
from app.models import User
from flask_babel import gettext

class LoginForm(FlaskForm):
    openid = StringField('openid', validators=[DataRequired()])
    remember_me = BooleanField('remember_me', default = False)

class EditForm(FlaskForm):
    nickname = StringField('nickname', validators=[DataRequired()])
    about_me = TextAreaField('about_me', validators=[Length(min=0, max=140)])

    def __init__(self, original_nickname, *args, **kwargs):
        FlaskForm.__init__(self, *args, **kwargs)
        self.original_nickname = original_nickname

    def validate(self):
        if not FlaskForm.validate(self):
            return False
        if self.nickname.data == self.original_nickname:
            return True
        if self.nickname.data != User.make_valid_nickname(self.nickname.data):
            self.nickname.errors.append(gettext('此昵称包含无效字符。请仅使用字母、数字、点和下划线。'))
            return False
        user = User.query.filter_by(nickname = self.nickname.data).first()
        if user is not None:
            self.nickname.errors.append(gettext('此昵称已在使用中。请选择另一个。'))
            return False
        return True

class PostForm(FlaskForm):
    post = StringField('post', validators=[DataRequired()])

class SearchForm(FlaskForm):
    search = StringField('search', validators=[DataRequired()])
