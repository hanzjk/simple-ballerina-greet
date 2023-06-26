# Use the Ballerina base image
FROM ballerina/ballerina:2201.3.5

USER 10014
# Set the working directory in the container
WORKDIR /home/ballerina

# Copy the Ballerina project files to the working directory
COPY . .

# Build the Ballerina project
RUN bal build

# Expose the required ports
EXPOSE 8080

# Run the Ballerina executable
CMD bal run
