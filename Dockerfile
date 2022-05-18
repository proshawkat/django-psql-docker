FROM python:3
ENV  PYTHONUNBUFFERED 1

RUN apt-get update

# Install postgres client
RUN apt install postgresql-client-common

RUN mkdir /augie
WORKDIR /augie
COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /augie/

#EXPOSE 50055:50051
#CMD python manage.py runserver 0.0.0.0:50055