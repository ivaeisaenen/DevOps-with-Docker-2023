FROM alpine:3.18
WORKDIR /usr/src/app
COPY script.sh .
RUN chmod +x script.sh
RUN apk --no-cache add curl
CMD ./script.sh