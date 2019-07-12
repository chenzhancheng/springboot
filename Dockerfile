#FROM openjdk:8-jdk-alpine
FROM hub.c.163.com/dwyane/openjdk:8
COPY /var/lib/jenkins/workspace/test/target/ /opt/springboot/
CMD java -jar /opt/springboot/springboot-0.0.1-SNAPSHOT.jar