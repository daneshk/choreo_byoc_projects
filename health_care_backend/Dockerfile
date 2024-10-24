FROM openjdk:17-jdk-alpine
WORKDIR /app
ADD DoctorInfo.jar app.jar
EXPOSE 9090 9091
ENTRYPOINT ["java","-jar","app.jar"]