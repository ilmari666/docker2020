FROM node:alpine
EXPOSE 3000
RUN apk --no-cache add git
WORKDIR /usr/app/
RUN git clone https://github.com/ilmari666/docker-hy-react-app.git
WORKDIR /usr/app/docker-hy-react-app
RUN npm install
CMD npm start
