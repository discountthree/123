# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2019-01-12 08:08
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0006_dailysurprise_user'),
    ]

    operations = [
        migrations.CreateModel(
            name='shopcar',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('num', models.IntegerField()),
                ('is_delete', models.BooleanField(default=True)),
            ],
        ),
        migrations.RemoveField(
            model_name='dailysurprise',
            name='user',
        ),
        migrations.AddField(
            model_name='shopcar',
            name='goods',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.DailySurprise'),
        ),
        migrations.AddField(
            model_name='shopcar',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.User'),
        ),
    ]