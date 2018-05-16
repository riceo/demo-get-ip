FROM python:2.7.9

RUN mkdir /app

ADD requirements.pip /app
ADD get_ip/ /app/get_ip/

WORKDIR /app

RUN pip install -r requirements.pip

ENTRYPOINT ["python", "get_ip/get_ip.py"]
