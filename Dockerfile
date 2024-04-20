Hi all, 

Please use the below docker code for the Dockerfile in the Milestone05 if the docker code provided in the milestone 05 document is not working.

 

FROM maven:3.8.3-openjdk-17 AS build

COPY . . RUN mvn clean package -Pprod -DskipTests

FROM openjdk:17-jdk-slim

COPY --from=build /target/DogsManagementSystem-0.0.1-SNAPSHOT.jar DogsManagementSystem.jar

CMD ["java", "-jar", "DogsManagementSystem.jar"]