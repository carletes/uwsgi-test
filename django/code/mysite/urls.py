from django.conf.urls import include, url

import hello.urls


urlpatterns = [
    url(r'^hello/', include(hello.urls)),
]
