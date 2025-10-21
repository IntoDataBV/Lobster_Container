FROM eclipse-temurin:11-jdk

WORKDIR /app

COPY lobsterBridge.zip /app

RUN apt-get update && apt-get install -y unzip \
    && unzip lobsterBridge.zip -d /app \
    && rm lobsterBridge.zip

#expose the https and http ports   
EXPOSE 443 80

#command to run the Lobster wrapper.jar
CMD ["java", "-jar", "bin/wrapper.jar", "--run"]