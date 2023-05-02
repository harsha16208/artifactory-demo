# Take a base image
FROM openjdk:11

# Create a work directory
WORKDIR /app

#Expose the port
EXPOSE 8085

# COPY the jar file to WORKDIR
COPY target/artifactory-demo-1.0.0.jar app.jar

#Running the app
ENTRYPOINT [ "java", "-jar", "./app.jar" ]

