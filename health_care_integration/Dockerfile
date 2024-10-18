FROM daneshk/healthcareintegrationproject:1.0.0

# Create a non-root user and switch to it
# RUN useradd -m wso2carbon
# USER wso2carbon

# Create a user with a known UID/GID within range 10000-20000.
# This is required by Choreo to run the container as a non-root user.
# Ensure root user before modifying users
USER root

# Set the new UID for the new user
ARG NEW_UID
ENV NEW_UID=${NEW_UID:-10001}

# Create a new user and ensure the group exists
RUN groupadd -g 10001 wso2mi && \
    useradd -u $NEW_UID -g wso2mi wso2mi && \
    cp -r /home/wso2carbon /home/wso2mi && \
    chown -R wso2mi:wso2mi /home/wso2mi

# Switch to the new user
USER wso2mi
