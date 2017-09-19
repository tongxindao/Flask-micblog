# _*_ encoding:utf-8 _*_
from __future__ import unicode_literals
from datetime import datetime

from django.db import models

from DjangoUeditor.models import UEditorField


# Create your models here.


class CityDict(models.Model):
    name = models.CharField(max_length=20, verbose_name=u"城市")
    desc = models.CharField(max_length=200, verbose_name=u"描述")
    add_time = models.DateTimeField(default=datetime.now)

    class Meta:
        verbose_name = u"城市"
        verbose_name_plural = verbose_name

    def __unicode__(self):
        return "{0}".format(self.name)


class CourseOrg(models.Model):
    name = models.CharField(max_length=50, verbose_name=u"机构名称")
    desc = UEditorField(verbose_name=u"机构描述", width=600, height=300,
                        imagePath="organizations/ueditor/",
                        filePath="organizations/ueditor", default='')
    tag = models.CharField(max_length=50, verbose_name=u"机构标签", default=u"全国知名")
    category = models.CharField(max_length=20, choices=(
        ("pxjg", "培训机构"), ("gr", "个人"), ("gx", "高校")),
        verbose_name=u"机构类别", default="pxjg")
    click_num = models.IntegerField(default=0, verbose_name=u"点击数")
    fav_nums = models.IntegerField(default=0, verbose_name=u"收藏数")
    star_scope_nums = models.FloatField(default=0.0, verbose_name=u"推荐指数",
                                        choices=((float(0.0), "0.0星"), (float(0.5), "0.5星"), (float(1.0), "1.0星"),
                                                 (float(1.5), "1.5星"), (float(2.0), "2.0星"), (float(2.5), "2.5星"),
                                                 (float(3.0), "3.0星"), (float(3.5), "3.5星"), (float(4.0), "4.0星"),
                                                 (float(4.5), "4.5星"), (float(5.0), "5.0星")))
    image = models.ImageField(upload_to="org/%Y/%m", verbose_name=u"机构logo")
    address = models.CharField(max_length=150, verbose_name=u"机构地址")
    students = models.IntegerField(default=0, verbose_name=u"学习人数")
    course_nums = models.IntegerField(default=0, verbose_name=u"课程数")
    has_gold = models.BooleanField(verbose_name=u"金牌", default=False)
    has_authentication = models.BooleanField(verbose_name=u"认证", default=False)
    city = models.ForeignKey(CityDict, verbose_name=u"所在城市")
    add_time = models.DateTimeField(default=datetime.now)

    class Meta:
        verbose_name = u"课程机构"
        verbose_name_plural = verbose_name

    def get_teacher_nums(self):
        # 获取课程机构教师数量
        return self.teacher_set.all().count()

    def get_teacher_courses(self):
        return self.course_set.all().order_by('-click_nums').first()

    def __unicode__(self):
        return "{0}".format(self.name)


class Teacher(models.Model):
    org = models.ForeignKey(CourseOrg, verbose_name=u"所属机构")
    name = models.CharField(max_length=50, verbose_name=u"教师名")
    work_years = models.IntegerField(default=0, verbose_name=u"工作年限")
    work_company = models.CharField(max_length=50, verbose_name=u"就职公司")
    work_position = models.CharField(max_length=50, verbose_name=u"公司职位")
    age = models.IntegerField(default=18, verbose_name=u"年龄")
    image = models.ImageField(upload_to="teacher/%Y/%m", verbose_name=u"头像",
                              default='', max_length=100)
    points = models.CharField(max_length=50, verbose_name=u"教学特点")
    click_num = models.IntegerField(default=0, verbose_name=u"点击数")
    has_gold_teacher = models.BooleanField(default=False, verbose_name=u"金牌讲师")
    fav_nums = models.IntegerField(default=0, verbose_name=u"收藏数")
    add_time = models.DateTimeField(default=datetime.now)

    class Meta:
        verbose_name = u"教师"
        verbose_name_plural = verbose_name

    def get_course_numbers(self):
        return self.course_set.all().count()

    def __unicode__(self):
        return "{0}".format(self.name)