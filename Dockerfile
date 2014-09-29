FROM ubuntu

MAINTAINER Taylor Malloy

RUN apt-get update

RUN apt-get install -y lighttpd

RUN mkdir -p /data/www

RUN echo "hi" > /data/www/index.html

RUN rm /etc/lighttpd/lighttpd.conf
ADD lighttpd.conf /etc/lighttpd/

EXPOSE 80

CMD lighttpd -D -f /etc/lighttpd/lighttpd.conf
