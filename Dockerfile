FROM centos:7 

MAINTAINER Juan Marin Otero <juan.marin.otero@gmail.com>

RUN yum update -y && \
    yum install -y java-1.8.0-openjdk-headless

WORKDIR /opt

COPY target/scala-2.11/grasshopper.jar .

USER nobody

ENTRYPOINT ["java", "-jar", "/opt/grasshopper.jar"]
