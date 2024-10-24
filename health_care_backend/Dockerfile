FROM openjdk:17-jdk-alpine
WORKDIR /app
ADD DoctorInfo.jar app.jar
EXPOSE 9090 9091
ENTRYPOINT ["java","-jar","app.jar"]

# Set the new UID for the new user (must be between 10000 and 20000)
ARG NEW_UID
ENV NEW_UID=10001

# Create a new user with the specified UID
RUN useradd -u $NEW_UID -m -s /bin/bash wso2mi

USER 10001
