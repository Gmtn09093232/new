
FROM nginx:alpine

# Delete the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy your index.html directly to the web root
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80
