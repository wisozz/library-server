FROM node:18-alpine

# 作業ディレクトリを設定
WORKDIR /src

# package.json と package-lock.json をコピーして依存関係をインストール
COPY package*.json ./
RUN npm install --only=production

# ソースコードをコピー
COPY . .

# ポートを公開
EXPOSE 3000

# アプリケーションを起動
CMD ["npm", "run", "start"]
