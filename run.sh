mvn clean package
docker run --rm -p 8081:8080 -v "$PWD/webapp/target/webapp.war:/usr/local/tomcat/webapps/webapp.war:ro" tomcat:9.0-jdk17-temurin