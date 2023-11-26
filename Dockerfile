# Use an official Node.js runtime as the base image
FROM node:14

# Create a new user to our new container and avoid the root user
RUN useradd --user-group --create-home --shell /bin/false app \
    && npm config set unsafe-perm true

# Set the working directory in the container to /home/app
WORKDIR /home/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Copy the rest of the application to the working directory
COPY . .

# Change the ownership of the application files to the app user
RUN chown -R app:app /home/app

# Switch to 'app' user
USER app

# Make port 8080 available to the world outside this container
EXPOSE ${BACKEND_SERVER_PORT}

# Define the command to run the application
CMD [ "npm", "start", "index.js" ]