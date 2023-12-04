FROM ubuntu:23.04
WORKDIR  /home/user01/pipeline_test
RUN apt update
RUN apt install -y openjdk-11-jre
RUN apt install -y maven
CMD ["java", "-jar", "/pipeline_test/spring-boot-docker.jar"]
