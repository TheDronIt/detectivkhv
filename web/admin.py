from django.contrib import admin
from .models import *
from django import forms

admin.site.register(Service)
admin.site.register(Doc)
admin.site.register(Contactus)
admin.site.register(Order)