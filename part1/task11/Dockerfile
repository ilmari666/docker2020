FROM node:alpine
EXPOSE 8000
WORKDIR /usr/src/app
RUN apk --no-cache add curl unzip
RUN curl -L https://github.com/docker-hy/backend-example-docker/archive/master.zip --output /usr/src/app/master.zip
RUN unzip /usr/src/app/master.zip
WORKDIR /usr/src/app/backend-example-docker-master
RUN npm install
CMD npm start

