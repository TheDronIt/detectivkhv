from django.db import models

class Service(models.Model):
	class Meta:
		verbose_name = 'Услуги'
		verbose_name_plural = 'Услуги'
		
	Name = models.CharField(max_length=120, verbose_name='Название услуги')
	Icon = models.ImageField(upload_to='service/icon', verbose_name='Иконка')
	Image = models.ImageField(upload_to='service/image', verbose_name='Изображение')
	About = models.TextField(verbose_name='Описание')
	Price =  models.IntegerField(blank=True, verbose_name='Цена')	

	def __str__(self):
		return str(self.id)+" | "+str(self.Name)


class Doc(models.Model):
	class Meta:
		verbose_name = 'Документы'
		verbose_name_plural = 'Документы'

	Title = models.CharField(max_length=120, verbose_name='Название')
	Description = models.TextField(verbose_name='Описание', blank=True)
	File = models.FileField(verbose_name='Файл', upload_to ='file/')

	def __str__(self):
		return str(self.Title)


class Contactus(models.Model):
	class Meta:
		verbose_name = 'Заявки на связь'
		verbose_name_plural = 'Заявки на связь'

	Name = models.CharField(max_length=120, verbose_name='Имя')
	Email =  models.CharField(max_length=120, verbose_name='Email')
	Phone =  models.CharField(max_length=120, verbose_name='Телефон')
	Message = models.TextField(verbose_name='Сообщение', blank=True)

	def __str__(self):
		return str(self.id)+" | "+str(self.Name)


class Order(models.Model):
	class Meta:
		verbose_name = 'Заказы'
		verbose_name_plural = 'Заказы'

	Service = models.CharField(max_length=120, verbose_name='Услуга')
	Name = models.CharField(max_length=120, verbose_name='Имя')
	Email =  models.CharField(max_length=120, verbose_name='Email')
	Phone =  models.CharField(max_length=120, verbose_name='Телефон')
	Message = models.TextField(verbose_name='Сообщение', blank=True)

	def __str__(self):
		return str(self.id)+" | "+str(self.Service)+" | "+str(self.Name)