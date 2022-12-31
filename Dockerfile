FROM maven:alpine as build
ENV HOME=/usr/app
RUN mkdir -p $HOME
WORKDIR $HOME
ADD . $HOME
RUN mvn package

FROM openjdk:8-jdk-alpine
COPY "./target/simple-kubernates-1.0-SNAPSHOT.jar" "app.jar"
EXPOSE 8080
ENTRYPOINT ["java","jar","app.jar"]