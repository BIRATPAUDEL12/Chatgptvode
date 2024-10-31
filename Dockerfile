# Use the official Ubuntu image
FROM ubuntu:20.04

# Install OpenSSH server
RUN apt-get update && apt-get install -y \
    openssh-server \
    && mkdir /var/run/sshd

# Create a new user with password
RUN useradd -m -s /bin/bash sshuser && echo 'sshuser:password' | chpasswd

# Set the root password (optional)
RUN echo 'root:root' | chpasswd

# Expose the SSH port
EXPOSE 22

# Start the SSH server
CMD ["/usr/sbin/sshd", "-D"]
