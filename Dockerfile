# Use a lightweight web server image
FROM nginx:alpine

# Copy the HTML file into the nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start nginx in the foreground (default CMD from base image already does this)
CMD ["nginx", "-g", "daemon off;"]
