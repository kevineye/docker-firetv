FROM alpine
MAINTAINER Kevin Eye <kevineye@gmail.com>

RUN apk -U add python py-pip swig openssl-dev build-base python-dev libusb curl \
 && curl -L -o /tmp/master.zip https://github.com/happyleavesaoc/python-firetv/archive/master.zip \
 && cd /tmp \
 && unzip master.zip \
 && pip install flask /tmp/python-firetv-master[firetv-server] \
 && apk --purge del swig openssl-dev build-base python-dev curl \
 && rm -rf /var/cache/apk/* /lib/apk/db/* /etc/ssl /tmp/*

EXPOSE 5556

ENTRYPOINT ["firetv-server"]
