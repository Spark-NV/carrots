FROM node:18-alpine
WORKDIR /app

# Copy package files and install all dependencies (tsx is needed at runtime)
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

EXPOSE 3000

CMD ["npx", "tsx", "server.ts"]
