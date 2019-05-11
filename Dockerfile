FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /django-docker
WORKDIR /django-docker
ADD requirements.txt /django-docker/
RUN pip install -r requirements.txt
ADD . /django-docker/
#CMD ["python", "manage.py", "migrate"]
#EXPOSE  8000
#CMD ["python", "manage.py", "runserver", "0.0.0.1:8000"]
