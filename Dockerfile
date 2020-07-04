FROM nginx:1.13.0-alpine

COPY ./public /usr/share/nginx/html
