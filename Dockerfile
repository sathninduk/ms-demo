# Start from the alpine node version 21.6.0
FROM node:21.6.0-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the code
COPY . .

# Expose the port the app runs in
EXPOSE 3060

# The command to run the app
CMD [ "node", "index.js" ]