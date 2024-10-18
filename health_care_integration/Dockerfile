FROM daneshk/healthcareintegrationproject:1.0.0

# Create a non-root user and switch to it
# RUN useradd -m wso2carbon
# USER wso2carbon

# Create a user with a known UID/GID within range 10000-20000.
# This is required by Choreo to run the container as a non-root user.

# Change user ID from 800 to a new value
RUN usermod -u 10001 wso2carbon

# Ensure the user's home directory and files have the correct ownership
RUN find / -user 802 -exec chown -h 10001 {} \;

USER 10001
