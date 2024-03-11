# Use official OpenJDK 17 slim image as the base image
FROM openjdk:17-jdk-slim AS build

# Set the working directory in the container,
# so you don't need to specify the full path for the JAR file in the CMD command
WORKDIR /app

# Copy Maven wrapper files
COPY mvnw .
COPY .mvn .mvn

# Copy the project source code
COPY pom.xml .
COPY src src

# Build the application
RUN ./mvnw clean package -DskipTests

# Use a smaller base image for the runtime environment
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file from the previous stage
COPY --from=build /app/target/*.jar app.jar

# Expose the port
EXPOSE 8080

# Define the command to run the application
CMD ["java", "-jar", "app.jar"]
# CMD ["java", "-jar", "/app/app.jar"]

