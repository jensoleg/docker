# BUILD image: docker build -t jensoleg/alarmrouter .
# RUN image  : docker run --name alarmrouter -e "APP=app.js" -d jensoleg/alarmrouter

FROM node:0.10

MAINTAINER Jens-Ole Graulund <jensole@graulund.net>

RUN npm install -g pm2@0.12.10

ADD start.sh /tmp/

RUN chmod +x /tmp/start.sh

CMD ./tmp/start.sh