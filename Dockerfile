FROM kong/kong-gateway:2.4-alpine
ENV MY_NAME="John Doe"

# No database version
# ENV KONG_DATABASE=off
# WORKDIR /home/kong
# #fails RUN kong config init /home/kong/kong.yml
# #fails RUN cat /home/kong/kong.yml >> kong.yml

# With Postgres
ENV KONG_DATABASE=postgres
ENV KONG_PG_HOST=$POSTGRESQL_SERVICE_HOST
ENV KONG_PG_USER=$POSTGRESQL_USER
ENV KONG_PG_PASSWORD=$POSTGRESQL_PASSWORD

ENV KONG_PROXY_ACCESS_LOG=/dev/stdout
ENV KONG_ADMIN_ACCESS_LOG=/dev/stdout
ENV KONG_PROXY_ERROR_LOG=/dev/stderr
ENV KONG_ADMIN_ERROR_LOG=/dev/stderr
ENV KONG_ADMIN_LISTEN="0.0.0.0:8001, 0.0.0.0:8444 ssl"


EXPOSE 8000/tcp
EXPOSE 8001/tcp
EXPOSE 8002/tcp
EXPOSE 8003/tcp
EXPOSE 8004/tcp
EXPOSE 8443/tcp
EXPOSE 8444/tcp
EXPOSE 8445/tcp
EXPOSE 8446/tcp
EXPOSE 8447/tcp
