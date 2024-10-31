# Use a lightweight base image.
FROM alpine:latest

# Install tmate and necessary packages.
RUN apk add --no-cache tmate openssh-client

# Create a directory for tmate logs (optional).
RUN mkdir -p /tmate/logs

# Expose the default port used by tmate.
EXPOSE 22

# Command to run tmate.
CMD ["tmate", "-F"]
