FROM centos

RUN yum install -y java-16-openjdk-devel
VOLUME /tmp
ADD target/spring-boot-security.jar $app.jar

RUN sh -c 'touch /app.jar'
EXPOSE 8762
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
