FROM ubuntu:16.04
COPY script.sh .
RUN chmod +x script.sh
RUN apt-get update && apt-get -y install curl
CMD ./script.sh

