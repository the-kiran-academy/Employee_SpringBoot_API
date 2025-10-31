# Use official Java 17 image
FROM eclipse-temurin:17-jdk-jammy

# Set workdir
WORKDIR /app

# Copy project
COPY . .

# Build app
RUN ./mvnw -B clean package -DskipTests

# Expose port 8080
EXPOSE 8080

# Run the app
CMD ["java", "-jar", "target/Employee_CRUD-0.0.1-SNAPSHOT.jar"]
