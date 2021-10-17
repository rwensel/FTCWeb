from django.urls import path

from . import views

urlpatterns = [
    path(
        '',
        views.BaseAdminDocsView.as_view(template_name='index.html'),
        name='index-root',
    ),
]
