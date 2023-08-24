# Use an OpenJDK base image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the build context into the container
COPY build/libs/OnlineExaminationSystem-0.0.1-SNAPSHOT.jar /app/

# Expose the port your application runs on
EXPOSE 8082

# Command to run the application
CMD ["java", "-jar", "OnlineExaminationSystem-0.0.1-SNAPSHOT.jar"]


