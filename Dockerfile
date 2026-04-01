FROM nginx:alpine

LABEL org.opencontainers.image.title="codyssey-web"
ENV APP_ENV=dev

COPY app/index.html /usr/share/nginx/html/index.html
