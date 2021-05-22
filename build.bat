mkdir build
tar -cvzf build/project.tar.gz -C project_template/ .
tar -cvzf build/app.tar.gz -C app_template/ .

if not exist ./venv virtualenv venv
call ./venv/Scripts/activate.bat
pip install django ipython docutils django-debug-toolbar django-cors-headers django-simple-history django-background-tasks djangorestframework django-filter drf-spectacular djangorestframework-simplejwt drf-access-policy
pip freeze > build/requirements.txt