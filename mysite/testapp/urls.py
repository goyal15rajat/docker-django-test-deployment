from django.conf.urls import url, include
from testapp.views import hello

urlpatterns = [
    url(r'^hello/', hello, name='hello')
]
