# Use the official Tomcat base image
FROM tomcat:latest

# Copy the WAR file into the Tomcat webapps directory
COPY target/petclinic.war /usr/local/tomcat/webapps/petclinic.war

# Expose the port that Tomcat will use
EXPOSE 8080

# The default command to run when starting the container will start Tomcat
CMD ["catalina.sh", "run"]

