FROM openjdk:8-jdk-alpine
FROM maven:alpine as build
ENV HOME=/usr/app
RUN mkdir -p $HOME
WORKDIR $HOME
ADD . $HOME
RUN mvn install
ENTRYPOINT ["java","-jar","/usr/app/target/simple-kubernates-1.0-SNAPSHOT.jar"]