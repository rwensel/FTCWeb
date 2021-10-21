from django.urls.conf import path
from django.views.generic import TemplateView

urlpatterns = [
    path(
        '',
        TemplateView.as_view(template_name='index.html'),
        name='index-root',
    ),
        path(
        'about/',
        TemplateView.as_view(template_name='about.html'),
        name='about',
    ),
]