# Use an nginx image to serve the built app
FROM nginx:alpine

# Copy the build output to the nginx html directory
COPY dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]
