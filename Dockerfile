# set the base image. Since we're running
# a Python application a Python base image is used


FROM python:3.8

LABEL maintainer="Duc Anh Lai"

ADD Bosch-AI-Talent-AI-Program-Techtrends /app

WORKDIR /app

RUN pip install -r requirements.txt && python init_db.py

EXPOSE 3111

CMD [ "python", "app.py" ]
