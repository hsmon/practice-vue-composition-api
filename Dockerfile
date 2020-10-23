FROM node:12.12.0-alpine

WORKDIR /usr/src/app

# apkはalpineのパッケージマネージャ
RUN apk update && \
    apk add --no-cache git curl && \
    curl -o- -L https://yarnpkg.com/install.sh | sh

ENV PATH $HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH

# ホットリロード
ENV CHOKIDAR_USEPOLLING=true

RUN yarn && \
    yarn global add @vue/cli && \
    yarn add -D eslint-plugin-vue@latest

EXPOSE 9050

CMD ["/bin/sh"]