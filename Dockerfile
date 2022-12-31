FROM openjdk:8-jdk-alpine
FROM maven:alpine
RUN mvn install && cp "./target/simple-kubernates-1.0-SNAPSHOT.jar" "app.jar"
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]