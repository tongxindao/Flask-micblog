# _*_ coding: utf-8 _*_
__author__ = 'tongxindao'
__date__ = '17-9-10 下午11:19'

from .models import Course, Lesson, Video, \
    CourseResource, BannerCourse

from organization.models import CourseOrg

import xadmin


class LessonInline(object):
    model = Lesson
    extra = 0


class CourseResourceInline(object):
    model = CourseResource
    extra = 0


class CourseAdmin(object):
    list_display = ['name', 'desc', 'degree', 'learn_times', 'students', 'fav_nums', 'image', 'click_nums', 'add_time']
    # 时间搜索略复杂，故略过
    search_fields = ['name', 'desc', 'detail', 'degree', 'learn_times', 'students', 'fav_nums', 'image', 'click_nums']
    list_filter = ['name', 'desc', 'detail', 'degree', 'learn_times', 'students', 'fav_nums', 'image', 'click_nums', 'add_time']
    # icon 设置，在 font-awsome 可找到对应样式模样，须先覆盖 xadmin/static/vendor/font-awesome 目录下文件
    model_icon = 'fa fa-desktop'
    # 设置显示默认排序
    ordering = ['-click_nums']
    # 设置字段不可被编辑
    readonly_fields = ['click_nums']
    # 设置可直接在列表页编辑字段
    list_editable = ['degree', 'desc']
    # 隐藏字段，此字段与 readonly_fields 冲突
    exclude = ['fav_nums']
    # 嵌套
    inlines = [LessonInline, CourseResourceInline]
    # 设置每3或5秒刷新一次页面
    refresh_times = [3, 5]
    # 指明 detail 字段使用 ueditor 样式
    style_fields = {"detail":"ueditor"}
    # 覆盖 excel.py 的默认值
    import_excel = True

    def queryset(self):
        qs = super(CourseAdmin, self).queryset()
        qs = qs.filter(is_banner=False)
        return qs

    def save_models(self):
        # 在保存课程的时候统计课程机构的课程数
        obj = self.new_obj
        obj.save()
        if obj.course_org is not None:
            course_org = obj.course_org
            course_org.course_nums = Course.objects.filter(course_org=course_org).count()
            course_org.save()

    def post(self, request, *args, **kwargs):
        if 'excel' in request.FILES:
            pass
        return super(CourseAdmin, self).post(request, args, kwargs)


class BannerCourseAdmin(object):
    list_display = ['name', 'desc', 'detail', 'degree', 'learn_times', 'students', 'fav_nums', 'image', 'click_nums', 'add_time']
    # 时间搜索略复杂，故略过
    search_fields = ['name', 'desc', 'detail', 'degree', 'learn_times', 'students', 'fav_nums', 'image', 'click_nums']
    list_filter = ['name', 'desc', 'detail', 'degree', 'learn_times', 'students', 'fav_nums', 'image', 'click_nums', 'add_time']
    # icon 设置，在 font-awsome 可找到对应样式模样，须先覆盖 xadmin/static/vendor/font-awesome 目录下文件
    model_icon = 'fa fa-desktop'
    # 设置显示默认排序
    ordering = ['-click_nums']
    # 设置字段不可被编辑
    readonly_fields = ['click_nums']
    # 隐藏字段，此字段与 readonly_fields 冲突
    exclude = ['fav_nums']
    # 嵌套
    inlines = [LessonInline, CourseResourceInline]

    def queryset(self):
        qs = super(BannerCourseAdmin, self).queryset()
        qs = qs.filter(is_banner=True)
        return qs


class LessonAdmin(object):
    list_display = ['course', 'name', 'add_time']
    search_fields = ['course', 'name']
    # 如欲在筛选器中添加外键，则须用 外键名__变量名 格式
    list_filter = ['course__name', 'name', 'add_time']
    model_icon = 'fa fa-list'


class VideoAdmin(object):
    # 显示列表项
    list_display = ['lesson', 'name', 'add_time']
    search_fields = ['lesson', 'name']
    list_filter = ['lesson__name', 'name', 'add_time']
    model_icon = 'fa fa-video-camera'


class CourseResourceAdmin(object):
    list_display = ['course', 'name', 'download', 'add_time']
    search_fields = ['course', 'name', 'download']
    list_filter = ['course__name', 'name', 'download', 'add_time']
    model_icon = 'fa fa-folder'


xadmin.site.register(Course, CourseAdmin)
xadmin.site.register(BannerCourse, BannerCourseAdmin)
xadmin.site.register(Lesson, LessonAdmin)
xadmin.site.register(Video, VideoAdmin)
xadmin.site.register(CourseResource, CourseResourceAdmin)