from django.urls import path
from . import listen

urlpatterns = [
    path('', listen.listener),
]