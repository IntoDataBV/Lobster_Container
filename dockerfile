FROM eclipse-temurin:11-jdk

WORKDIR /app

ARG ZIP_FILE

COPY ${ZIP_FILE} /app/file.zip

RUN apt-get update && apt-get install -y unzip \
    && unzip file.zip -d /app \
    && rm file.zip

#expose the https and http ports   
#EXPOSE 443 80

#command to run the Lobster wrapper.jar
CMD ["java", "-jar", "bin/wrapper.jar", "--run"]