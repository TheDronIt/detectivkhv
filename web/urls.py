from django.urls import include, path
from django.views.generic.base import TemplateView
from . import views

urlpatterns = [
    path('', views.index, name='home'),
    path('service', views.service),
    path('service/<int:id>', views.aboutservice),
    path('document', views.document),
    path('contacts', views.contacts),
    path('thanks', views.thanks),
    path('robots.txt', TemplateView.as_view(template_name="robots.txt", content_type="text/plain"))
    ]