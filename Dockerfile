# syntax=docker/dockerfile:1
FROM python:3.10-slim-buster

WORKDIR /python-flask/

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .
ENV FLASK_APP=app.py
CMD [ "python3", "-m" , "flask", "run", "--host=0000"]