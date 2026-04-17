FROM gitea/gitea:latest

RUN apk add --no-cache curl

WORKDIR /app

EXPOSE 3000 22

CMD [ "/usr/bin/entrypoint","/bin/s6-svscan", "/etc/s6" ]
