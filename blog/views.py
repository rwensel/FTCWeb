from django.contrib.admin.views.decorators import staff_member_required
from django.contrib.admindocs import utils
from django.utils.decorators import method_decorator
from django.views.generic import TemplateView
from blog import admin


class BaseAdminDocsView(TemplateView):
    """
    Base view for admindocs views.
    """


class ViewIndexView(BaseAdminDocsView):
    template_name = 'view_index.html'