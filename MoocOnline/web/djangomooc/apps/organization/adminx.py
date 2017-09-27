# _*_ coding: utf-8 _*_
__author__ = 'tongxindao'
__date__ = '17-9-10 下午11:49'

from .models import CityDict, CourseOrg, Teacher

import xadmin

class CityDictAdmin(object):
    list_display = ['name', 'desc', 'add_time']
    search_fields = ['name', 'desc']
    list_filter = ['name', 'desc', 'add_time']
    model_icon = 'fa fa-map-marker'


class CourseOrgAdmin(object):
    list_display = ['name', 'desc', 'click_num', 'fav_nums', 'image', 'address', 'city', 'add_time']
    search_fields = ['name', 'desc', 'click_num', 'fav_nums', 'image', 'address', 'city']
    list_filter = ['name', 'desc', 'click_num', 'fav_nums', 'image', 'address', 'city__name', 'add_time']
    model_icon = 'fa fa-university'
    # 设置 course 外键字段已 ajax 方式显示，用于在添加课程时在输入框搜索已添加机构名称
    # relfield_style = 'fk-ajax'

    # 指明 desc 字段使用 ueditor 样式
    style_fields = {"desc":"ueditor"}


class TeacherAdmin(object):
    list_display = ['org', 'name', 'work_years', 'work_company', 'work_position', 'points', 'click_num', 'fav_nums', 'add_time']
    search_fields = ['org', 'name', 'work_years', 'work_company', 'work_position', 'points', 'click_num', 'fav_nums']
    list_filter = ['org__name', 'name', 'work_years', 'work_company', 'work_position', 'points', 'click_num', 'fav_nums', 'add_time']
    model_icon = 'fa fa-graduation-cap'


xadmin.site.register(CityDict, CityDictAdmin)
xadmin.site.register(CourseOrg, CourseOrgAdmin)
xadmin.site.register(Teacher, TeacherAdmin)