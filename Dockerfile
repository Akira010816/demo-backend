# ベースイメージ
FROM node:14.17.0-alpine3.13 AS base

# タイムゾーンを日本に設定
RUN apk --no-cache add tzdata && \
  cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
  apk del tzdata

# 作業ディレクトリを設定
WORKDIR /usr/src/app

# ポート番号を設定
ENV PORT 3300
EXPOSE 3300

# データ保存用ディレクトリ
ENV DATA_DIR /usr/src/app/data

# nestjs-command用の設定ファイル
ENV CLI_PATH /usr/src/app/dist/cli.js



# 開発用イメージ
FROM base AS development

# Node.jsを開発モードに設定
ENV NODE_ENV development

RUN apk add --update python3 make g++ && rm -rf /var/cache/apk/*

# node_modulesのインストール
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

# node_modulesのコマンドをパスに追加
ENV PATH $PATH:/usr/src/app/node_modules/.bin

# ソースファイルをコピー
COPY . .

# 実行コマンド
CMD ["yarn", "start:dev"]


# 本番用のビルドファイル(distディレクトリ)を作成するイメージ
FROM development AS builder

# パフォーマンスモニタリング
RUN apk --no-cache add curl bash sudo
RUN curl -Ls https://download.newrelic.com/install/newrelic-cli/scripts/install.sh | bash && \
    sudo NEW_RELIC_API_KEY=NRAK-1WLWLXTLK9TXFTIOGT3FDP6HPWE NEW_RELIC_ACCOUNT_ID=3388092 /usr/local/bin/newrelic install -n node-agent-installer

# ソースのビルド
RUN yarn build && mkdir -p dist/src && cp src/newrelic.js dist/src/newrelic.js && yarn install --production --ignore-scripts --prefer-offline

# 本番用イメージ
FROM base AS production

# Node.jsを本番モードに設定
ENV NODE_ENV production

# リソースファイルをコピー
COPY resource ./resource

# ビルドファイルをコピー
COPY --from=builder /usr/src/app/dist ./dist
COPY --from=builder /usr/src/app/node_modules ./node_modules
COPY --from=builder /usr/src/app/package.json ./package.json



# 実行コマンド
CMD ["node", "dist/main", "--max-old-space-size=2048"]
