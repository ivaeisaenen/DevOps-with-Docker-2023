FROM golang:1.16
EXPOSE 8000
ENV PORT=8000
# Needed Part1_12 to pass an url through the cors check. Default: https://example.com
ENV REQUEST_ORIGIN=http://127.0.0.1:5000
# # Needed Part2_4 The hostname for redis. (port will default to 6379, the default for Redis)
# ENV REDIS_HOST=6379
# # Needed Part2_6 The hostname for postgres database. (port will default to 5432 the default for Postgres)
# ENV POSTGRES_HOST=postgres:5432
# # Needed Part2_6 database user. Default: postgres
# ENV POSTGRES_USER=postgres
# # Needed Part2_6 database password. Default: postgres
# ENV POSTGRES_PASSWORD=postgres
# # Needed Part2_6 database name. Default: postgres
# ENV POSTGRES_DATABASE=postgres

WORKDIR /usr/src/app
COPY ./material-applications/example-backend/ .
RUN go build
RUN go test ./...
