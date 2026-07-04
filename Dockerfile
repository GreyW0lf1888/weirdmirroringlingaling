# Use the lightweight official alpine image
FROM nginx:alpine

# Copy your custom configuration into the Nginx directory
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 10000 which we specified in the nginx config
EXPOSE 10000

# Start Nginx in the foreground so the container stays active
CMD ["nginx", "-g", "daemon off;"]
