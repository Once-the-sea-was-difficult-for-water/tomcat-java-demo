FROM java:8
VOLUME /tmp
ADD ly-simple-tomcat-0.0.1-SNAPSHOT.war app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 8088
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
