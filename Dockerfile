# Use an official Node.js runtime as the parent image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install the application's dependencies
RUN npm install

# Copy the rest of the application's source code
COPY . .

# Make the application's port available to the outside world
EXPOSE 3000

# Define the command to run your app
CMD [ "node", "index.js" ]