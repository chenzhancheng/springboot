#FROM openjdk:8-jdk-alpine
FROM hub.c.163.com/dwyane/openjdk:8
VOLUME /tmp
ADD springboot-0.0.1-SNAPSHOT.jar app.jar
CMD java -jar /opt/springboot/springboot-0.0.1-SNAPSHOT.jar