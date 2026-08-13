FROM gogost/gost:3.2.7-nightly.20260729
COPY config.template.yml /etc/gost/config.template.yml
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]
