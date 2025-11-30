FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

RUN apk add --no-cache wget

RUN wget https://launcher.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090ed40f0aaf9df8a/server.jar -O server.jar && \
    echo "eula=true" > eula.txt

COPY server.properties .

EXPOSE 25565-25581

CMD ["java", "-Xmx512M", "-jar", "server.jar", "nogui"]
