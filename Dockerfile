FROM python:3.8-slim AS base

WORKDIR /analytics

COPY requirements_new.txt ./requirements_new.txt

RUN apt update -y

RUN apt install build-essential libpq-dev -y

RUN pip install --upgrade pip setuptools wheel

RUN pip install -r requirements_new.txt

COPY . .

CMD python app2.py