
FROM docker:24.0.2-dind-alpine3.18

RUN apk add --no-cache git
RUN apk add --no-cache bash

WORKDIR /usr/src/app
COPY builder.sh .
RUN chmod 755 builder.sh
ENTRYPOINT ["./builder.sh"]