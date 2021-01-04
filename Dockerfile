FROM openjdk:11
COPY ./build/libs/jenkins-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "jenkins-0.0.1-SNAPSHOT.jar"]