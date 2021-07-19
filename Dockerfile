# Pull base image 
FROM tomcat:8-jre8 

# Maintainer 
LABEL MAINTAINER "hope6950@gmail.com" 
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
