from django.views.generic import TemplateView


class DefaultTemplateView(TemplateView):
    template_name='media.html'