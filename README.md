# shadowsocks-python for Docker
I create a trigger to weekly rebuild this repo in Docker. Good luck!

##How to use
docker run -d --name some-ss -p [port]:[port] -v /some/path/to/config.json:/shadowsocks/config.json yumin9822/shadowsocks-python

You shoud create a config.json in you host OS and change the [port] according to your config.json

