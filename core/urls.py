from django.contrib import admin
from django.urls import include, re_path
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    re_path(r'^admin/', admin.site.urls, name='admin'),
    re_path(r'^$', include('home.urls'), name='home'),
    re_path(r'^blog/', include('blog.urls'), name='blog'),
    re_path(r'^media/', include('mediaroom.urls'), name='media'),
    re_path(r'^projects/', include('projects.urls'), name='projects'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
