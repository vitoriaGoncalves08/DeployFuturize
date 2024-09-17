FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests
FROM openjdk:18.0.2-jdk-slim
COPY --from=build ./docker-spring-boot.jar docker-spring-boot.jar
EXPOSE 8080

EntryPOINT ["java", "-jar", "docker-spring-boot.jar"]