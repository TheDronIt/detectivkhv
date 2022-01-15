from django.shortcuts import render, redirect
from .models import *
import random

def index(request):
	service = Service.objects.all()[:4]
	SaveSuc = createcontactsus(request)
	if str(SaveSuc) == "1":
		return redirect('/thanks#')
	data = {
		'Service': service
	}
	return render(request, 'page/index.html', data)


def thanks(request):
	return render(request, 'page/thanks.html')


def document(request):
	doc = Doc.objects.all()
	data = {
		'Doc': doc
	}
	return render(request, 'page/document.html', data)


def contacts(request):
	data = {

	}
	return render(request, 'page/contacts.html', data)


def service(request):
	service = Service.objects.all()
	data = {
		'Service': service
	}
	return render(request, 'page/service.html', data)


def aboutservice(request, id):
	service = Service.objects.get(id=id)
	SaveSuc = createorder(request)
	if str(SaveSuc) == "1":
		return redirect('/thanks#')
	data = {
		'Service': service
	}
	return render(request, 'page/aboutservice.html', data)






def createcontactsus(request):
	SaveSuc = 0
	if request.method == "POST":
		if request.POST['button']:
			if request.POST['button'] == "Связаться":
				CreateContactMessage = Contactus(
				Name = str(request.POST['Name']),
				Email = str(request.POST['Email']),
				Phone = str(request.POST['Phone']),
				Message = str(request.POST['Message'])
				)
				CreateContactMessage.save()
				SaveSuc = 1
	return SaveSuc

def createorder(request):
	SaveSuc = 0
	if request.method == "POST":
		if request.POST['button']:
			if request.POST['button'] == "Заказать":
				CreateContactMessage = Order(
				Service = str(request.POST['Service']),
				Name = str(request.POST['Name']),
				Email = str(request.POST['Email']),
				Phone = str(request.POST['Phone']),
				Message = str(request.POST['Message'])
				)
				CreateContactMessage.save()
				SaveSuc = 1
	return SaveSuc