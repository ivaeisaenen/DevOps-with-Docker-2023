FROM ubuntu:18.04
WORKDIR /usr/src/app
COPY script.sh .
RUN chmod +x script.sh

RUN apt update
RUN apt install -y curl

RUN apt install dos2unix
RUN dos2unix ./script.sh

CMD ./script.sh