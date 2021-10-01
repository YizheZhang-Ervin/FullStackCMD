## BackEnd: Django
### start project  
django-admin startproject xxSite  
python manage.py startapp xxApp  
  
### Libs
pip install django  
pip install djangorestframework  
pip install django-cors-headers   
  
### Database & static files  
cd SharingBike  
python manage.py collectstatic  
python manage.py makemigrations
python manage.py migrate  
  
### Backend Management  
python manage.py createsuperuser(name:ez,password:ez)  
python manage.py runserver  
Browser: http://127.0.0.1:8000/  
  
### Dependency List  
Virtual Env libs: pip freeze > requirements.txt   
Dependency libs: pipreqs ./  
pip install -r requirements.txt   
  
## Heroku Deploy  
add gunicorn requirements  
delete version nums  
heroku run python xxx  
  
