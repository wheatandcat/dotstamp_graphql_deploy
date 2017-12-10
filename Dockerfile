FROM nginx

COPY ./nginx/* /etc/nginx/conf.d/

RUN rm /etc/nginx/conf.d/default.conf

ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
