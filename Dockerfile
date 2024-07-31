FROM bellsoft/liberica-runtime-container:jdk-cds-slim AS build
WORKDIR /app

# Copy the pom.xml and source code into the container
# COPY pom.xml .
# COPY src ./src
COPY . .

# Package the application
RUN ./mvnw clean package -DskipTests

# Copy the jar file from the build stage
# ARG JAR_FILE=target/*.jar
# COPY ${JAR_FILE} app.jar
COPY --from=build /app/target/*.jar app.jar

# Expose the port that the application will run on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]