FROM node:10-alpine
RUN apk -Uuv add curl ca-certificates
ADD electron-packager.sh /bin/
RUN chmod +x /bin/electron-packager.sh
ENTRYPOINT /bin/electron-packager.sh
