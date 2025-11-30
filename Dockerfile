FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

RUN apk add --no-cache wget

RUN wget https://launcher.mojang.com/v1/objects/7ef960dd3fbc85e84e915b4cce6e8f1a43ca4ce6/server.jar -O server.jar && \
    echo "eula=true" > eula.txt

COPY server.properties .

EXPOSE 25565-25581

CMD ["java", "-Xmx512M", "-jar", "server.jar", "nogui"]
