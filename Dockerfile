FROM centos:6
MAINTAINER yumin9822 <yumin9822@gmail.com>

RUN yum install m2crypto wget -y
RUN wget --no-check-certificate https://bootstrap.pypa.io/get-pip.py -O - | python
RUN pip install shadowsocks

ADD config.json /shadowsocks/config.json

EXPOSE 8399

ENTRYPOINT ["ssserver", "-c", "/shadowsocks/config.json"]
