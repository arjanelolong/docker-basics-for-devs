FROM alpine:3.16

ARG siteName
ENV SITE_NAME=$siteName

WORKDIR /usr/src/app

RUN apk update
RUN apk add --no-cache nodejs npm

COPY . .

RUN npm install
RUN npm run build


EXPOSE 3000

CMD ["npm", "start"]