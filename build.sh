mkdir build
tar -cvzf build/project.tar.gz ./project_template
tar -cvzf build/app.tar.gz ./app_template

[[ -d ./venv ]] || virtualenv venv
./venv/Scripts/activate
pip install django ipython django-debug-toolbar django-cors-headers django-simple-history django-background-tasks djangorestframwrork django-filter drf-yasg djangorestframework-simplejwt drf-access-policy
pip freeze > build/requirements.txt