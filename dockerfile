FROM nginx:1.20-alpine

RUN apk update && \
    apk upgrade

COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
