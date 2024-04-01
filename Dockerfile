# # Use an official Node.js runtime as the base image
# FROM node:20
 
# # Set the working directory in the container
# WORKDIR /app
 
# # Copy package.json and package-lock.json to the container
# COPY package*.json ./
 
# # Install project dependencies
# RUN npm install
 
# # Copy the rest of the application code to the container
# COPY . .
 
# # Build the Angular application
# RUN npm run build -- --prod
 
# # Use NGINX to serve the Angular app
# FROM nginx:alpine
 
# # Copy the built Angular app from the previous stage into the NGINX server
# COPY --from=0 /app/dist/* /usr/share/nginx/html/
 
# # Expose the port on which the NGINX server will run on
# EXPOSE 80



# Use an official Nginx image as the base image
FROM nginx

# Copy the built Angular app to the appropriate location in the container
COPY dist/my-angular-app /usr/share/nginx/html

# Expose port 80 for the Nginx server
EXPOSE 80

# Start the Nginx server when the container starts
CMD ["nginx", "-g", "daemon off;"]

 
# # Start NGINX to serve the Angular app when the container runs
# CMD ["nginx", "-g", "daemon off;"]


