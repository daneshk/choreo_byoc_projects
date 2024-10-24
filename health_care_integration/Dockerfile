FROM daneshk/healthcareintegrationproject:1.0.0

# RUN sed -i 's|doctorinfo:9090/grandOak/doctors|health-care-backend-1668727303:9090|g' ${WSO2_SERVER_HOME}/repository/deployment/server/synapse-configs/default/endpoints/GrandOakEndpoint-1.0.0.xml
# RUN sed -i 's|doctorinfo|health-care-backend-1668727303|g' ${WSO2_SERVER_HOME}/repository/deployment/server/synapse-configs/default/endpoints/PineValleyEndpoint-1.0.0.xml
# http://health-care-backend-1668727303:9090/
# http://health-care-backend-1668727303:9091/pineValley/doctors
# Ensure root user before modifying users
USER root

# Set the new UID for the new user (must be between 10000 and 20000)
ARG NEW_UID
ENV NEW_UID=10001

# Create a new user with the specified UID
RUN useradd -u $NEW_UID -m -s /bin/bash wso2mi

# Change ownership of an existing directory (for example, /home/wso2carbon) to the new user
RUN chown -R wso2mi:wso2mi /home/wso2carbon

# Optionally change permissions (if needed)
# RUN chmod -R 755 /home/wso2carbon  # Set directory permissions as required

# Switch to the new user
USER 10001
