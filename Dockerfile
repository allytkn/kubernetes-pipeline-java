FROM openjdk:11
WORKDIR /tmp
RUN git clone https://github.com/allytkn/kubernetes-pipeline-java.git
VOLUME /tmp/authentication-0.0.1
EXPOSE 8080
ARG JAR_FILE=authentication-0.0.1.jar
ADD ${JAR_FILE} authentication-0.0.1.jar
ENTRYPOINT ["java","-jar","authentication-0.0.1.jar"]
