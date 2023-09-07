FROM maven:3.8.4-openjdk-11
WORKDIR /app
COPY . .
RUN mvn clean install 
#copy ./target/spring-boot-docker.jar spring-boot-docker.jar
#RUN java -jar spring-boot-docker.jar '/target/spring-boot-docker.jar'
ENTRYPOINT ["java", "-jar", "target/your-project.jar"]

#ENTRYPOINT ["java","-jar","spring-boot-docker.jar"]
