
# Use the Nginx image
FROM nginx:latest

# Copy website files to Nginx HTML root directory 
COPY html/ /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY images/ /usr/share/nginx/html/images/
COPY js/ /usr/share/nginx/html/js/

# Expose port 80 for web traffic
EXPOSE 80

# Start the Nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]


