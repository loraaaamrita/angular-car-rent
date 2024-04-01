# Use an official Node.js runtime as the base image
FROM node:16-alpine

# Set the working directory in the container
WORKDIR /app

# Clone the Angular project from GitHub
RUN apk add --no-cache git && \
    git clone https://github.com/3ruchita/Angular.git .

# Install Angular project dependencies
RUN npm install

# Expose the port the app runs on
EXPOSE 4200

# Command to run the Angular development server
CMD ["npm", "start"]
