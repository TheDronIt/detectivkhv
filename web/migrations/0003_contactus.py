# Generated by Django 3.2.10 on 2022-01-02 06:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0002_auto_20220101_1325'),
    ]

    operations = [
        migrations.CreateModel(
            name='Contactus',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Name', models.CharField(blank=True, max_length=120, verbose_name='Имя')),
                ('Email', models.CharField(max_length=120, verbose_name='Email')),
                ('Phone', models.CharField(blank=True, max_length=120, verbose_name='Телефон')),
                ('Message', models.TextField(verbose_name='Сообщение')),
            ],
            options={
                'verbose_name': 'Заявки на связь',
                'verbose_name_plural': 'Заявки на связь',
            },
        ),
    ]