FROM alpine

# Install dependencies
RUN apk add curl npm bash
RUN npm install -g pm2

# Install filebrowser
RUN curl -fsSL https://filebrowser.xyz/get.sh | bash

# Copy files/scripts
COPY config.json /.filebrowser.json
COPY startup.sh /startup.sh

EXPOSE 80

CMD ["./startup.sh"]