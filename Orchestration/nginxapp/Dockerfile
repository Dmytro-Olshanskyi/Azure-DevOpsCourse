# Use a lightweight Nginx image
FROM nginx:alpine

# Copy custom HTML content (if needed)
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]