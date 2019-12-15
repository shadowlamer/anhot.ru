FROM nginx:alpine

RUN apk update
RUN apk add lighttpd

COPY lighttpd.conf /etc/lighttpd/lighttpd.conf
COPY index.html /var/www/localhost/htdocs/
COPY robots.txt /var/www/localhost/htdocs/

EXPOSE 80

ENTRYPOINT ["/usr/sbin/lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
