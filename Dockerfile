FROM openjdk:17
#WORKDIR /app
#COPY target/Calculator-1.0-SNAPSHOT.jar app.jar
#ENTRYPOINT ["java", "-jar", "app.jar"]

# FROM ubuntu:latest
# RUN apt-get update && apt-get install -y openjdk-11-jdk
COPY ./target/Calculator-1.0-SNAPSHOT.jar ./
WORKDIR ./
CMD ["java","-cp","Calculator-1.0-SNAPSHOT.jar","com.calculator.Main"]