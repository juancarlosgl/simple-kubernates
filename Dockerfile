FROM openjdk:8-jdk-alpine
COPY "./target/simple-kubernates-1.0-SNAPSHOT.jar" "app.jar"
ENTRYPOINT ["java","jar"]