FROM daneshk/healthcareintegrationproject:1.0.0

# Create a non-root user and switch to it
# RUN useradd -m wso2carbon
# USER wso2carbon

# Create a user with a known UID/GID within range 10000-20000.
# This is required by Choreo to run the container as a non-root user.
RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/nonexistent" \
    --shell "/sbin/nologin" \
    --no-create-home \
    --uid 10014 \
    "wso2carbon"
# Use the above created unprivileged user
USER 10014