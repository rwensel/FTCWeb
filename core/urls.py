from django.contrib import admin
from django.urls import include, re_path, path
from settings import django
from django.conf.urls.static import static

urlpatterns = [
    re_path(r'^admin/', admin.site.urls, name='admin'),
    path('', include('home.urls'), name='home'),
] + static(django.MEDIA_URL, document_root=django.MEDIA_ROOT)
