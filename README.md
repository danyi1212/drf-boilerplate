# Django Rest Framework project boilerplate

![GitHub release (latest by date)](https://img.shields.io/github/v/release/danyi1212/drf-boilerplate)
![GitHub all releases](https://img.shields.io/github/downloads/danyi1212/drf-boilerplate/total)
![GitHub Release Date](https://img.shields.io/github/release-date/danyi1212/drf-boilerplate)

Boilerplate for quickly creating a DRF projects and apps.

* **Pre-configured** with logging, swagger, global access conditions, and JWT authentication.
* **App template** including signals, urls (with router), serializer, and background tasks.
* **Users application** implementing custom model, serializer, and view set for user (with history).
* Included PyCharm **run configurations** for `runserver`, `shell`, and mockup data export/import.

## Links

* PIP Requirements: <https://git.io/JOM5l> (optional)
  * Full URL: <https://github.com/danyi1212/drf-boilerplate/releases/latest/download/requirements.txt>
* Project Template: <https://git.io/JOM5X>
  * Full URL: <https://github.com/danyi1212/drf-boilerplate/releases/latest/download/project.tar.gz>
* App Template: <https://git.io/JOM5y>
  * Full URL: <https://github.com/danyi1212/drf-boilerplate/releases/latest/download/app.tar.gz>

## Included Technologies

* Django (3.1, 3.2)
* ipython
* [django-debug-toolbar](https://github.com/jazzband/django-debug-toolbar)
* [django-cors-headers](https://github.com/adamchainz/django-cors-headers)
* [django-simple-history](https://github.com/jazzband/django-simple-history)
* [django-background-tasks](https://github.com/arteria/django-background-tasks)
* [djangorestframework](https://www.django-rest-framework.org/)
* [django-filter](https://github.com/carltongibson/django-filter)
* [drf-spectacular](https://github.com/tfranzel/drf-spectacular)
* [djangorestframework-simplejwt](https://github.com/jazzband/django-rest-framework-simplejwt)
* [drf-access-policy](https://github.com/rsinger86/drf-access-policy)

## Usage

### New Project

Create a new folder with the name of your Django project, open a terminal in it and run:

> **Note:** You may want to install the pip packages manually to install specific versions of packages.

<details>
    <summary>Click to expand</summary>

    pip install django ipython docutils django-debug-toolbar django-cors-headers django-simple-history django-background-tasks djangorestframwrork django-filter drf-spectacular djangorestframework-simplejwt drf-access-policy
</details>

``` bash
$ git init
$ python -m venv venv
$ ./venv/Scripts/activate
(venv) $ pip install -r https://git.io/JOM5l
(venv) $ django-admin startproject <project_name> . --template https://git.io/JOM5X
(venv) $ py manage.py migrate
```

> **Notice:** It is advised to create a `requirements.txt` file to store your project's dependencies.

<details>
    <summary>Click to expand</summary>

    pip freeze > requirements.txt
</details>

> **Notice:** To use the included PyCharm run configurations, rename the `_run` folder to `.run`.

<details>
    <summary>Click to expand</summary>

    mv _run .run
</details>

### New App

Open a terminal, activated with the project's virtual environment and run:

``` bash
(venv) $ py manage.py startapp <app_name> --template https://git.io/JOM5y
```

Add your app to the `INSTALLED_APPS` setting in your `settings.py` file:

``` python
INSTALLED_APPS = [
    # Project apps
    "<app_name>",
]
```

Include the app's router in your projects `urls.py` file:

``` python
urlpatterns = [
    # Project app routers
    path("<app_name>/", include("<app_name>.urls")),
]
```

## PyCharm Run Configurations

This boilerplate includes PyCharm Run Configurations for:

* **runserver** - Starts a lightweight Web server for development and also serves static files.
* **process_tasks** - Run tasks that are scheduled to run on the queue.
* **shell** - Runs a Python interactive interpreter (using IPython, with PyCharm debug mode).
* **export mockup** - Export model data to `mockup.json` using `dumpdata` (used for mockup data).
* **import mockup** - Import model data from `mockup.json` using `loaddata` (used for mockup data).
* **test** - Discover and run tests in your project.
