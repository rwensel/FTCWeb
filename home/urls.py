from django.urls.conf import re_path, path
from . import views
from settings import django
from django.conf.urls.static import static

urlpatterns = [
    path(
        '', views.DefaultTemplateView.as_view(),
        name='home'
    ),
    re_path(
        r'^about',
        views.AboutemplateView.as_view(),
        name='about'
    ),
    re_path(
        r'^contact',
        views.AboutemplateView.as_view(),
        name='contact'
    ),
] + static(django.MEDIA_URL, document_root=django.MEDIA_ROOT)
