FROM daneshk/healthcareintegrationproject:1.0.0

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
