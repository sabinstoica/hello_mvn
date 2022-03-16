FROM maven
RUN mkdir -p /app
COPY jb-hello-world-maven-0.2.0.jar /app
CMD ["java","-jar","/app/jb-hello-world-maven-0.2.0.jar"]
