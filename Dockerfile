FROM nginx:latest

WORKDIR /usr/local/quizzipy

COPY build .

COPY  default.conf /etc/nginx/conf.d

ENTRYPOINT ["nginx", "-g", "daemon off;"]

#CMD ["sh", "/docker-entrypoint.sh"]

