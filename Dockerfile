FROM alpine:3.1

# Update
RUN apk add --update python py-pip

# Install app dependencies
COPY requirements.txt ./
RUN pip install -r requirements.txt

# Bundle app source
COPY . .

EXPOSE  8000
CMD ["python", "manage.py", "runserver", "127.0.0.1:8000"]
