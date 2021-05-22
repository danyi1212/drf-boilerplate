# Getting Started with Django Rest Framework

This project was bootstrapped with [drf-boilerplate](https://github.com/danyi1212/drf-boilerplate) version 1.1.

## Clone a new instance

Git clone this repository, then open a terminal and run:

```bash
python -m venv venv
./venv/Scripts/activate
pip install -r requirements.txt
mkdir logs
py manage.py migrate
```

Then run scripts for 'import mockup', 'process_tasks' and 'runserver'.

> **Important:** You will need to create a `local_settings.py` in your project's folder with all your local settings.

## Create new app

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

This project includes PyCharm Run Configurations for:

* **runserver** - Starts a lightweight Web server for development and also serves static files.
* **process_tasks** - Run tasks that are scheduled to run on the queue.
* **shell** - Runs a Python interactive interpreter (using IPython, with PyCharm debug mode).
* **export mockup** - Export model data to `mockup.json` using `dumpdata` (used for mockup data).
* **import mockup** - Import model data from `mockup.json` using `loaddata` (used for mockup data).
* **test** - Discover and run tests in your project.

## Learn More

You can learn more about this boilerplate at <https://github.com/danyi1212/drf-boilerplate>.

To learn more about the technologies included with this boilerplate check out the documentation at:

* Django documentation: <https://docs.djangoproject.com/>
* DRF documentation: <https://www.django-rest-framework.org/>
* Django Background Tasks: <https://django-background-tasks.readthedocs.io/en/latest/>
* DRF Access Policy: <https://rsinger86.github.io/drf-access-policy/>
