# Generated by Django 2.1 on 2019-12-02 17:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('v1', '0004_auto_20191127_1759'),
    ]

    operations = [
        migrations.AlterField(
            model_name='exercise',
            name='ExerciseId',
            field=models.CharField(max_length=150000, unique=True),
        ),
    ]
