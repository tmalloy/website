FROM nginx

MAINTAINER Taylor Malloy

RUN rm -rf /etc/nginx/conf.d
COPY nginx.conf /etc/nginx/nginx.conf

COPY www /data/www

