FROM java:8-jre

ENV WEBAPPS_DIR='/var/lib/jetty/webapps'

WORKDIR /app
COPY . .

CMD ["./entrypoint.sh"]
