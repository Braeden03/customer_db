# Use a lightweight Java runtime as base image
FROM openjdk:17-jdk-alpine

# Add a volume for temporary files
VOLUME /tmp

# Argument to locate the jar file
ARG JAR_FILE=target/customerapplication-0.0.1-SNAPSHOT.jar

# Copy the jar into the container
COPY ${JAR_FILE} app.jar

# Run the jar
ENTRYPOINT ["java","-jar","/app.jar"]
