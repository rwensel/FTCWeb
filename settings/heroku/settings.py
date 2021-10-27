import django_heroku
import dj_database_url
from pathlib import Path
import os


BASE_DIR = Path(__file__).resolve().parent.parent

DEBUG = False
APPEND_SLASH = False
SECRET_KEY = os.environ.get('SECRET_KEY')
ALLOWED_HOSTS = ['0.0.0.0', 'localhost', '127.0.0.1', 'ftcweb.herokuapp.com',
                 'freethinkingcoder.com', 'www.freethinkingcoder.com', 'blog.freethinkingcoder.com']

DATABASES = {
    'default': {
        dj_database_url.config(conn_max_age=600, ssl_require=True)
    }
}

django_heroku.settings(locals())
