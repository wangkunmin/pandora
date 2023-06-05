FROM python:3.9-slim

MAINTAINER "Neo Peng <pengzhile@gmail.com>"

VOLUME /data

WORKDIR /opt/app

EXPOSE 8018

ADD . .

RUN pip --no-cache-dir install --upgrade pip && pip --no-cache-dir install .[api,cloud]

ENTRYPOINT ["bin/startup.sh"]
