FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /django-docker
MKDIR /django-docker
WORKDIR /django-docker

ADD requirements.txt /django-docker/
RUN pip install -r requirements.txt
ADD . /django-docker/
#CMD django-admin.py startproject bmat; cd /src/bmat; python manage.py collectstatic --no-input;python manage.py migrate; gunicorn bmat.wsgi -b 0.0.0.0:8000
CMD python manage.py migrate; python manage.py runserver 0.0.0.0:8000
#EXPOSE  8000
#CMD ["python", "manage.py", "runserver", "0.0.0.1:8000"]
