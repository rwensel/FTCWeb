from django_hosts import patterns, host
from settings import django

host_patterns = patterns(
    '',
    host('www', django.ROOT_URLCONF, name='www'),
    host('', 'home.urls', name='home'),
    host('blog', 'blog.urls', name='blog'),
    host('media', 'mediaroom.urls', name='media'),
    host('projects', 'projects.urls', name='projects'),
)
