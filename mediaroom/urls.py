from django.urls.conf import path
from . import views
from settings import django
from django.conf.urls.static import static

urlpatterns = [
    path(
        '', views.DefaultTemplateView.as_view(),
        name='media'
    ),
] + static(django.MEDIA_URL, document_root=django.MEDIA_ROOT)