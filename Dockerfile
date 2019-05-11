FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /django-docker
WORKDIR /django-docker
ADD requirements.txt /django-docker/
RUN pip install -r requirements.txt
ADD . /django-docker/
RUN git config --global url."https://$4511bcc7ead08de854aeaf024de7edf0bde0e6d5:x-oauth-basic@github.com/Hassankashi/docker/"
#CMD django-admin.py startproject bmat; cd /src/bmat; python manage.py collectstatic --no-input;python manage.py migrate; gunicorn bmat.wsgi -b 0.0.0.0:8000
#CMD python manage.py makemigrations; python manage.py migrate; python manage.py runserver 0.0.0.0:8000
#python manage.py makemigrations python manage.py migrate
#EXPOSE  8000
#CMD ["python", "manage.py", "runserver", "0.0.0.1:8000"]
