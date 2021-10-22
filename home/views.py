from django.views.generic import TemplateView


class DefaultTemplateView(TemplateView):
    template_name='index.html'
    
    
class AboutemplateView(TemplateView):
    template_name='about.html'