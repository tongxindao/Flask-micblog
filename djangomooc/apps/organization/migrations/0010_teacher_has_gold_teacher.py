# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2017-09-19 14:52
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('organization', '0009_auto_20170919_1308'),
    ]

    operations = [
        migrations.AddField(
            model_name='teacher',
            name='has_gold_teacher',
            field=models.BooleanField(default=False, verbose_name='\u91d1\u724c\u8bb2\u5e08'),
        ),
    ]