FROM tomcat:latest
COPY petclinic.war /usr/local/tomcat/webapps/
EXPOSE 8070
ADD target/petclinic.war petclinic.war
ENTRYPOINT ["java","-jar","/petclinic.war"]
