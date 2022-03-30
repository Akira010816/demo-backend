# ベースイメージ
FROM nginx:1.20.0-alpine AS base

# タイムゾーンを日本に設定
RUN apk --no-cache add tzdata && \
  cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
  apk del tzdata

# Nginx設定ファイルをコピー
COPY nginx.conf /etc/nginx
COPY conf.d/default.conf /etc/nginx/conf.d



# 開発用イメージ
FROM base AS development

# サーバ接続先設定ファイルをコピー
COPY conf.d/server.conf.development /etc/nginx/conf.d/server.conf



# 本番用イメージ
FROM base AS production

# サーバ接続先設定ファイルをコピー
COPY conf.d/server.conf.production /etc/nginx/conf.d/server.conf
