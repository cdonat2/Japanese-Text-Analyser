from django.conf import settings
from django.conf.urls import include
from django.contrib import admin
from django.urls import path

urlpatterns = [
    path("", include("analyser.urls")),
    path('admin/', admin.site.urls)
]

if settings.DEBUG:
    import debug_toolbar

    urlpatterns += [
        path('__debug__/', include(debug_toolbar.urls)),
    ]
