# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2017-09-19 15:42
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('organization', '0013_auto_20170919_1539'),
    ]

    operations = [
        migrations.AlterField(
            model_name='courseorg',
            name='star_scope_nums',
            field=models.FloatField(choices=[('0.0', '0.0'), ('0.5', '0.5'), ('1.0', '1.0'), ('1.5', '1.5'), ('2.0', '2.0'), ('2.5', '2.5'), ('3.0', '3.0'), ('3.5', '3.5'), ('4.0', '4.0'), ('4.5', '4.5'), ('5.0', '5.0')], default=0.0, verbose_name='\u63a8\u8350\u6307\u6570'),
        ),
    ]
