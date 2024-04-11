FROM maven:3.8.3-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean install

FROM openjdk:17-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
ENV PORT 8802
EXPOSE $PORT
ENTRYPOINT ["java", "-jar", "app.jar"]