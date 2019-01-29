FROM python:3.6-alpine

COPY . /nyt-docker
WORKDIR /nyt-docker

RUN pip install -r requirements.txt

ENV FLASK_APP = run.py

EXPOSE 5000

CMD [ "gunicorn", "-w 4", "-b :5000","run:app" ]