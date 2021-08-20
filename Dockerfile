FROM centos

RUN yum install -y java-16-openjdk
VOLUME /tmp
ADD target/$Dockerfile.jar $app.jar

RUN sh -c 'touch /app.jar'
EXPOSE 5000
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]