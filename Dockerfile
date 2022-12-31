FROM maven:alpine as build
ENV HOME=/usr/app
RUN mkdir -p $HOME
WORKDIR $HOME
ADD . $HOME
RUN mvn install

FROM openjdk:11-jdk-alpine
EXPOSE 8080
ENTRYPOINT ["java","jar","$HOME/target/simple-kubernates-1.0-SNAPSHOT.jar"]