FROM openjdk:11-jdk-slim
LABEL author="GT"

ARG JAR=spring-framework-petclinic-5.1.5.jar
COPY target/$JAR /app.jar
EXPOSE 8080

ENTRYPOINT ["java","-jar","/app.jar"]
