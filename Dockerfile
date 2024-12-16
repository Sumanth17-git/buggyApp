FROM openjdk:17-jdk

# Set the working directory
WORKDIR /usr/app

# Copy application files to the container
COPY ./ ./


# Environment variable for Java options
ENV JAVA_OPTS=""
ENTRYPOINT exec java ${JAVA_OPTS} -jar buggyApp.jar PROBLEM_OOM
