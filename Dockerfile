# Use the official stable lightweight Nginx image
FROM nginx:alpine

# 1. Overwrite the default Nginx configuration path with your 150-line file
COPY nginx.conf /etc/nginx/nginx.conf

# 2. Overwrite the default welcome page with your custom portal code
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx in the foreground so the container stays alive
CMD ["nginx", "-g", "daemon off;"]
