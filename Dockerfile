FROM openjdk:11-jre-slim
WORKDIR /app
COPY build/libs/OnlineExaminationSystem-0.0.1-SNAPSHOT.jar /app/
EXPOSE 5432
CMD ["java", "-jar", "OnlineExaminationSystem-0.0.1-SNAPSHOT.jar"]

