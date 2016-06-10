FROM alpine
MAINTAINER Kevin Eye <kevineye@gmail.com>

RUN apk -U add python py-pip swig openssl-dev build-base python-dev libusb \
 && pip install flask firetv \
 && apk --purge del swig openssl-dev build-base python-dev \
 && rm -rf /var/cache/apk/* /lib/apk/db/*

EXPOSE 5556

ENTRYPOINT ["firetv-server"]
