FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests
FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/docker-spring-boot.jar docker-spring-boot.jar
EXPOSE 8080

EntryPOINT ["java", "-jar", "docker-spring-boot.jar"]