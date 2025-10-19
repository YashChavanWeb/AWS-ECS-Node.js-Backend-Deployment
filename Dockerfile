# Use an official Node.js runtime as the base image.
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
# This step is done separately to leverage Docker's caching,
# so dependencies aren't re-installed unless package.json changes.
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# The application runs on port 8000
EXPOSE 8000

# Define the command to run the application
CMD [ "npm", "start" ]