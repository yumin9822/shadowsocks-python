FROM debian:latest
MAINTAINER yumin9822 <yumin9822@gmail.com>

RUN apt-get update
RUN apt-get -y install python-pip

ADD requirements.txt /shadowsocks/requirements.txt
RUN pip install -r /shadowsocks/requirements.txt

ADD config.json /shadowsocks/config.json

EXPOSE 8388

ENTRYPOINT ["/env/bin/ssserver", "-c", "/shadowsocks/config.json"]
