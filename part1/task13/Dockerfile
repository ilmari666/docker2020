FROM openjdk:8-alpine
EXPOSE 8080
WORKDIR /usr/src/app
RUN apk --no-cache add curl unzip
RUN curl -L https://github.com/docker-hy/spring-example-project/archive/master.zip --output /usr/src/app/master.zip
RUN unzip /usr/src/app/master.zip
WORKDIR /usr/src/app/spring-example-project-master
RUN ./mvnw package
CMD java -jar ./target/docker-example-1.1.3.jar
