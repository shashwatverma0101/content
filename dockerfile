FROM nginx:alpine
# Copy the HTML, CSS, and JavaScript files into the container
WORKDIR /usr/share/nginx/html
COPY . .
# Expose port 80 for the Nginx server
EXPOSE 80
# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]





