FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
#RUN git clone https://hassankashi:ff52ce9b8b06eeb24d5140dbbd9fd1f400094941@github.com/Hassankashi/docker.git --branch=master master
RUN pip install -r requirements.txt
ADD ./ /code/
#CMD ["python", "mysite/manage.py", "runserver", "0.0.0.0:8001"]
EXPOSE  8000
CMD ["python", "manage.py", "runserver", "0.0.0.1:8000

#FROM python:3
#ENV PYTHONUNBUFFERED 1
#RUN mkdir /django-docker
##RUN git config --global url."https://ff52ce9b8b06eeb24d5140dbbd9fd1f400094941@github.com/"
##RUN git config --global github.user hassankashi
#RUN git clone https://hassankashi:ff52ce9b8b06eeb24d5140dbbd9fd1f400094941@github.com/Hassankashi/docker.git --branch=master master

##RUN git config --global github.token ff52ce9b8b06eeb24d5140dbbd9fd1f400094941
#WORKDIR /django-docker
#ADD requirements.txt /django-docker/
#RUN pip install -r requirements.txt
#ADD . /django-docker/

#CMD django-admin.py startproject bmat; cd /src/bmat; python manage.py collectstatic --no-input;python manage.py migrate; gunicorn bmat.wsgi -b 0.0.0.0:8000
#CMD python manage.py makemigrations; python manage.py migrate; python manage.py runserver 0.0.0.0:8000
#python manage.py makemigrations python manage.py migrate
#EXPOSE  8000
#CMD ["python", "manage.py", "runserver", "0.0.0.1:8000"]
