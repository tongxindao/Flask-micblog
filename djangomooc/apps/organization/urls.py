# _*_ coding: utf-8 _*_
__author__ = 'tongxindao'
__date__ = '17-9-12 下午8:20'

from django.conf.urls import url

from .views import OrgView, AddUserAskView, OrgHomeView, \
    OrgCourseView, OrgDescView, OrgTeacherView, AddFavView, \
    TeacherListView, TeacherDetailView

urlpatterns = [
    # 课程机构列表页
    url(r'^list/$', OrgView.as_view(), name='org_list'),
    url(r'^add_ask/$', AddUserAskView.as_view(), name='add_ask'),
    url(r'^home/(?P<org_id>\d+)/$', OrgHomeView.as_view(), name='org_home'),
    url(r'^course/(?P<course_id>\d+)/$', OrgCourseView.as_view(), name='org_course'),
    url(r'^desc/(?P<desc_id>\d+)/$', OrgDescView.as_view(), name='org_desc'),
    url(r'^org_teacher/(?P<teacher_id>\d+)/$', OrgTeacherView.as_view(), name='org_teacher'),

    # 机构收藏
    url(r'^add_fav/$', AddFavView.as_view(), name='add_fav'),

    # 讲师列表页
    url(r'^teacher/list/$', TeacherListView.as_view(), name='teacher_list'),

    # 讲师详情页
    url(r'^teacher/detail/(?P<teachers_id>\d+)/$', TeacherDetailView.as_view(), name='teacher_detail'),
]