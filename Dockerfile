FROM openjdk:17-jdk

WORKDIR /usr/app

COPY ./ ./

ENV JAVA_OPTS=""
ENV PROBLEM=""

ENTRYPOINT ["sh", "-c", "exec java $JAVA_OPTS -jar buggyApp.jar $PROBLEM"]
