# _*_ coding: utf-8 _*_
__author__ = 'tongxindao'
__date__ = '17-9-18 下午4:43'

import xadmin
from xadmin.views import BaseAdminPlugin, ListAdminView
from django.template import loader

# excel 导入
class ListImportExcelPlugin(BaseAdminPlugin):
    import_excel = False

    # 插件入口函数，当其为 True 时加载插件
    def init_request(self, *args, **kwargs):
        return bool(self.import_excel)

    def block_top_toolbar(self, context, nodes):
        nodes.append(loader.render_to_string(
            'xadmin/excel/model_list.top_toolbar.import.html',
            context_instance=context))

xadmin.site.register_plugin(ListImportExcelPlugin, ListAdminView)