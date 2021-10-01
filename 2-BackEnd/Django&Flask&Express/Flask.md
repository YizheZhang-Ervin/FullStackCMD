## BackEnd: Flask
### Libs  
pip install Flask  
pip install Flask_RESTful  
pip install Flask_Cors  
pip install numpy  
pip install pandas  
pip install cmake  
pip install dlib  
pip install SpeechRecognition  
pip install face_recognition  
pip install gTTS  
pip install gunicorn  
pip install gevent  
pip install python-dotenv  
  
### Backend Management  
python -m flask run  
  
### Dependency List  
Virtual Env libs: pip freeze > requirements.txt   
Dependency libs: pipreqs ./  
pip install -r requirements.txt   
  
### Deploy  
Gunicorn Common 1) gunicorn -w 4 -b 127.0.0.1:4000 myproject:app  
Gunicorn Factory 2) gunicorn "myproject:create_app()"  
uWSGI 1) uwsgi --http 127.0.0.1:5000 --module myproject:app  
twistd 1) twistd -n web --port tcp:8080 --wsgi myproject.app  
Gevent 1) python manage_gevent.py  
  