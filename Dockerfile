FROM openjdk:12
COPY ./ ./
ENTRYPOINT ["java","-jar","buggyApp.jar", "PROBLEM_CPU"]