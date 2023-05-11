FROM ubuntu:20.04
WORKDIR /usr/src/app
COPY script.sh .
RUN chmod +x script.sh

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl

RUN apt-get install dos2unix
RUN dos2unix ./script.sh

CMD ./script.sh