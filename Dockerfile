#FROM openjdk:8-jdk-alpine
#FROM hub.c.163.com/dwyane/openjdk:8
#VOLUME /tmp
#ADD springboot-0.0.1-SNAPSHOT.jar app.jar
#CMD java -jar app.jar

FROM java:8
VOLUME /tmp
COPY springboot-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c "touch /app.jar"
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.jar", "--spring.profiles.active=test", "--server.port=8081", "> /log/app.log"]