FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY /home/ubuntu/maven-web-app/target/*.war /usr/local/tomcat/webapps/
