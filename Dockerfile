FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

RUN apk add --no-cache wget curl jq

RUN curl -s https://launcher.mojang.com/v1/metadata/launcher | jq -r '.latest.release' > /tmp/version.txt && \
    VERSION=$(cat /tmp/version.txt) && \
    curl -s https://launcher.mojang.com/v1/objects/manifest.json | \
    jq -r '.objects[] | select(.type=="server" and .version=="'$VERSION'") | .sha1' | \
    xargs -I {} wget https://launcher.mojang.com/v1/objects/{}/server.jar -O server.jar || \
    wget https://launcher.mojang.com/v1/objects/a28d66ad673dca58cedc4145981800e0def61fdf/server.jar -O server.jar && \
    echo "eula=true" > eula.txt

COPY server.properties .

EXPOSE 25565-25581

CMD ["java", "-Xmx512M", "-jar", "server.jar", "nogui"]
