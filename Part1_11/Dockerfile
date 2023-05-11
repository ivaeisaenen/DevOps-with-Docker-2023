FROM openjdk:8
EXPOSE 8080
WORKDIR /usr/src/app
COPY ./material-applications/spring-example-project/ .
RUN chmod +x mvnw
#RUN apt update && apt upgrade -y
RUN apt update
RUN apt install -y curl
RUN apt install dos2unix
RUN dos2unix ./mvnw
RUN ./mvnw package
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]