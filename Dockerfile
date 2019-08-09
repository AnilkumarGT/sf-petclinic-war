FROM tomcat:9-jdk8-openjdk-slim
LABEL author="GT"

ARG WAR=spring-framework-petclinic-5.1.5.war 
COPY target/$WAR /usr/local/tomcat/webapps/petclinic.war 
EXPOSE 8080
CMD ["catalina.sh", "run"]
