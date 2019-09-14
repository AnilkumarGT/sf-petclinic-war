FROM tomcat:9-jdk8-openjdk-slim
LABEL author="GT"

ARG WAR=petclinic.war 
COPY target/$WAR /usr/local/tomcat/webapps/petclinic.war 
EXPOSE 8080
ENTRYPOINT ["catalina.sh", "run"]
