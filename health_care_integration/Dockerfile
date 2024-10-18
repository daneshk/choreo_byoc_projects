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

# Create a new user with the specified UID between 10000 and 20000
RUN useradd -u $NEW_UID -m -s /bin/bash wso2mi && \
    cp -r /home/wso2carbon /home/wso2mi && \
    chown -R $NEW_UID:$NEW_UID /home/wso2mi

# Explicitly set the USER to the new UID
USER $NEW_UID
