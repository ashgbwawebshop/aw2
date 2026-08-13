FROM ghcr.io/go-gost/gost:latest
COPY config.template.yml /etc/gost/config.template.yml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]
