FROM eclipse-temurin:11-jdk

WORKDIR /app

ARG ZIP_FILE

COPY ${ZIP_FILE} /app/file.zip

RUN apt-get update && apt-get install -y unzip \
    && unzip file.zip -d /app \
    && rm file.zip

# Add any connector jars the connector directory
# COPY connectors/ /app/extlib/

#command to run the Lobster wrapper.jar
CMD ["java", "-jar", "bin/wrapper.jar", "--run"]