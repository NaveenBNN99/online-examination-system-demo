FROM openjdk:11-jdk-slim AS builder
WORKDIR /app
COPY build.gradle settings.gradle ./
COPY src/ src/
RUN ./gradlew build


FROM builder
WORKDIR /app
COPY --from=builder /app/build/libs/OnlineExaminationSystem-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
