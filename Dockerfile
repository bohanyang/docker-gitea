FROM gitea/gitea:1.9.1

RUN apk --no-cache add libcap && \
    echo "setcap 'cap_net_bind_service=+ep' /app/gitea/gitea" >> /etc/s6/gitea/setup
