# Runs the app on Apache Tomcat 9 without needing NetBeans or Ant.
# Build: docker build -t jsp-oop-user-contact-registration .
# Run:   docker run --rm -p 8080:8080 jsp-oop-user-contact-registration
# Open:  http://localhost:8080/Aula05_POO/index.jsp
FROM tomcat:9.0-jdk11-temurin

RUN rm -rf /usr/local/tomcat/webapps/*

COPY web/ /usr/local/tomcat/webapps/Aula05_POO/
COPY src/java/ /tmp/src/

RUN mkdir -p /usr/local/tomcat/webapps/Aula05_POO/WEB-INF/classes \
 && javac -encoding UTF-8 -d /usr/local/tomcat/webapps/Aula05_POO/WEB-INF/classes $(find /tmp/src -name '*.java') \
 && rm -rf /tmp/src

ENV CATALINA_OPTS="-Djava.awt.headless=true"
EXPOSE 8080
