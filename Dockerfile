FROM openjdk:11
RUN wget http://192.168.1.62:5001/authentication-0.0.1.jar
VOLUME /tmp/authentication-0.0.1
EXPOSE 8080
ARG JAR_FILE=authentication-0.0.1.jar
ADD ${JAR_FILE} authentication-0.0.1.jar
ENTRYPOINT ["java","-jar","authentication-0.0.1.jar"]
