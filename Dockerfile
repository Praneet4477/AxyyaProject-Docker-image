FROM openjdk:17
ARG JAR_FILE=build/target/spring-boot-docker.jar
WORKDIR /opt/app
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
