FROM node:12.16.1-alpine3.9
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh
COPY ./project-files/ /app
WORKDIR /app
RUN npm install
EXPOSE 10001
CMD ["npm", "run", "start"]
