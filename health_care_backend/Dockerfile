FROM daneshk/backend-healthcare-service

USER 10002

ENV TRIVY_DISABLE_VEX_NOTICE=true
EXPOSE 9090 9091
ENTRYPOINT ["java","-jar","app.jar"]

