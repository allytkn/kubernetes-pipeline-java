FROM openjdk:11
RUN wget http://registry-docker.digitalplanet.com.tr:5001/authentication-0.0.1.jar
VOLUME /tmp/authentication-0.0.1
EXPOSE 8080
ARG JAR_FILE=authentication-0.0.1.jar
ADD ${JAR_FILE} authentication-0.0.1.jar
ENTRYPOINT ["java","-jar","authentication-0.0.1.jar"]
