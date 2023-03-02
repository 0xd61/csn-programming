FROM marpteam/marp-cli

RUN apk add --no-cache --update musl musl-utils musl-locales tzdata

ENV LC_ALL=de_DE.UTF-8

#ENTRYPOINT sh