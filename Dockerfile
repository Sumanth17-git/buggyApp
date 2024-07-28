FROM openjdk:17-jdk-slim
COPY ./ ./
ENTRYPOINT ["java","-jar","buggyApp.jar"]
CMD ["PROBLEM_CPU"]
