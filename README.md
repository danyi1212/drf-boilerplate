
# Django Rest Framework project boilerplate

Boilerplate for quickly creating a DRF projects and apps.

## Links

* PIP Requirements: <https://git.io/JOM5l>
  * Full URL: <https://github.com/danyi1212/drf-boilerplate/releases/latest/download/requirements.txt>
* Project Template: <https://git.io/JOM5X>
  * Full URL: <https://github.com/danyi1212/drf-boilerplate/releases/latest/download/project.tar.gz>
* App Template: <https://git.io/JOM5y>
  * Full URL: <https://github.com/danyi1212/drf-boilerplate/releases/latest/download/app.tar.gz>

## Included Technologies

* Django (3.1+)
* ipython
* [django-debug-toolbar](https://github.com/jazzband/django-debug-toolbar)
* [django-cors-headers](https://github.com/adamchainz/django-cors-headers)
* [django-simple-history](https://github.com/jazzband/django-simple-history)
* [django-background-tasks](https://github.com/arteria/django-background-tasks)
* [djangorestframework](https://www.django-rest-framework.org/)
* [django-filter](https://github.com/carltongibson/django-filter)
* [drf-yasg](https://github.com/axnsan12/drf-yasg)
* [djangorestframework-simplejwt](https://github.com/jazzband/django-rest-framework-simplejwt)
* [drf-access-policy](https://github.com/rsinger86/drf-access-policy)

# Usage

## New Project

Create a new folder with the name of your Django project, open a terminal in it and run:

``` bash
$ git init
$ virtualenv venv
$ ./venv/Scripts/activate
(venv) $ pip install -r https://git.io/JOM5l
(venv) $ django-admin startproject <project_name> . --template https://git.io/JOM5X
(venv) $ py manage.py migrate
```

## New App

Open a terminal, activated with the project's virtual environment and run:

``` bash
(venv) $ py manage.py startapp <app_name> --template https://git.io/JOM5y
```

Add your app to the `INSTALLED_APPS` setting in your `settings.py` file:

``` python
INSTALLED_APPS = [
    # Project apps
    # ...
    "<app_name>",
]
```

Include the app's router in your projects `urls.py` file:

``` python
urlpatterns = [
    # Project app routers
    # ...
    path("<app_name>/", include("<app_name>.urls")),
]
```
