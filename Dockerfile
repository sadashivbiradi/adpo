# Stage 1: Build
FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install -g @angular/cli && npm install

COPY . .

EXPOSE 4600

CMD ["ng", "serve", "--host", "0.0.0.0","--port", "4600"]