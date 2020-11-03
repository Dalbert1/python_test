FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && apt-get install -y python3 python3-pip git libpq-dev gcc vim postgresql
RUN cd /app/ && pip install -r requirements.txt
#EXPOSE 5000
ENV PYTHONPATH=/app/
