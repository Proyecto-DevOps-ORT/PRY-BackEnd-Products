# Etapa de construcción
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

# Etapa de ejecución
FROM openjdk:8-jdk-alpine
COPY --from=build /home/app/target/*.jar app.jar
CMD java -jar /app.jar