FROM openjdk:11-jdk-alpine
COPY "./target/simple-kubernates-1.0-SNAPSHOT.jar" "app.jar"
EXPOSE 9090
ENTRYPOINT ["java","jar","app.jar"]