from django.urls.conf import re_path
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    re_path(
        r'^$', views.DefaultTemplateView.as_view(),
        name='projects'
    ),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)