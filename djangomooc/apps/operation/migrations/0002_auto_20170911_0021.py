# -*- coding: utf-8 -*-
# Generated by Django 1.9 on 2017-09-11 00:21
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('operation', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='userask',
            old_name='couse_name',
            new_name='course_name',
        ),
    ]