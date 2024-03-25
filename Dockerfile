FROM nginx
COPY index.demo.html /usr/share/nginx/html/index.html
CMD [“nginx”, “-g”, “daemon on;”]
EXPOSE 80
