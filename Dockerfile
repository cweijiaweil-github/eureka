FROM openjdk:8u191-jre-alpine3.9

VOLUME /tmp

ADD /target/eureka1-0.0.1-SNAPSHOT.jar /eureka1-0.0.1-SNAPSHOT.jar


EXPOSE 9100
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/eureka1-0.0.1-SNAPSHOT.jar"]
