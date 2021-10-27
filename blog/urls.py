from django.urls import path
from django.conf.urls.static import static
from settings import django
from . import views


urlpatterns = [
    path('', views.PostList.as_view(), name='blog'),
    path('post/<slug:slug>', views.PostDetail.as_view(), name='post_detail'),
] + static(django.MEDIA_URL, document_root=django.MEDIA_ROOT)
