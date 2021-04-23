from rest_framework.routers import DefaultRouter

from {{ app_name }} import views


router = DefaultRouter()
# Register your viewsets here
# https://www.django-rest-framework.org/api-guide/routers/#usage
# Example: 
# router.register('', views.YourViewSet)

app_name = '{{ app_name }}'
urlpatterns = [
    *router.urls
]
