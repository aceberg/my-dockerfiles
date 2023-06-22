FROM node:20-alpine

EXPOSE 8850/tcp
WORKDIR /app

RUN npm install http-server -g && \
    npm install bootstrap@5.3.0 bootstrap-icons@1.10.5 bootswatch@5.3.0

ENTRYPOINT ["http-server"]
CMD ["--cors", "-p", "8850"]
