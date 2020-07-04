FROM nginx:1.13.0-alpine

COPY --from=compile compile_source/public /usr/share/nginx/html
