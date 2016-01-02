# BUILD image: docker build -t jensoleg/nginx .
# RUN image  : docker run --name nginx --link mqtt:mqtt --link tsapi:tsapi -v <!/ecs/webroot>:/usr/share/nginx/html:ro -p 80:80 -d jensoleg/nginx
#                                         
FROM nginx

MAINTAINER Jens-Ole Graulund <jensole@graulund.net>

EXPOSE 80
EXPOSE 443
EXPOSE 8081
EXPOSE 8085

VOLUME /usr/share/nginx/html

COPY nginx.conf /etc/nginx/nginx.conf