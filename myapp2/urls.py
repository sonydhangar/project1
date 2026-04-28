from django.urls import path

from myproject2 import settings
from . import views
from .views import dashboard_view
from .views import logout_view

urlpatterns = [
    path('', views.home1, name='home'),
    path('about/', views.about, name='about'), 
    path('contact/', views.contact, name='contact'), 
    path('portfolio/', views.portfolio, name='portfolio'),
    path('register/', views.register, name='register'),
    path('ajax/contact/', views.contact_ajax, name='contact_ajax'),
    path('singleportfolio/<int:id>/', views.portfolio_detail, name='portfolio_detail'),
    path('set/', views.set_session, name='login'),
    path('get/', views.get_session),
    path('delete/', views.delete_session,name='delete_session'),
    path('logout/', logout_view, name='logout'), 
    path('dashboard/', dashboard_view, name='dashboard'),


]

