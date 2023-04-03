# Use an existing Docker image as a base
FROM ubuntu:latest

# Set the working directory for the Docker image
WORKDIR /app

# Copy the application files to the Docker image
COPY . /app

# Install any necessary dependencies fbhdjb
RUN apt-get update && apt-get install -y python3

# Specify the command to run when the Docker image starts
CMD ["python3", "app.py"]
