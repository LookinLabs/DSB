# Use an official Node.js runtime as the base image
FROM node:14 as builder

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install --no-dev 

# Copy the rest of the application to the working directory
COPY . .

FROM node:14-alpine

# Create a new user to our new container and avoid the root user
RUN addgroup -S app && adduser -S app -G app -h /app \
    && npm config set unsafe-perm true

# Set the working directory in the container to /home/app
WORKDIR /app

COPY --from=builder /app .

# Set Correct permissions
RUN chown -R app:app /app

# Change system user
USER app

# Make port 8080 available to the world outside this container
EXPOSE ${BACKEND_SERVER_PORT}

# Define the command to run the application
CMD [ "npm", "start", "index.js" ]