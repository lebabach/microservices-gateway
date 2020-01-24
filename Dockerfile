FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/gateway-0.0.11-SNAPSHOT.jar
COPY ${JAR_FILE} gateway-0.0.11-SNAPSHOT.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/gateway-0.0.11-SNAPSHOT.jar"]
