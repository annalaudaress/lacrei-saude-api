FROM node:16

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

LABEL maintainer="seu-email@exemplo.com"
LABEL description="API da Lacrei Saúde"
LABEL version="1.0"
LABEL logo="https://storage.googleapis.com/atados-v3/user-uploaded/images/b9005025-89b3-4c4b-b20a-da6348ecf713.png"

EXPOSE 3000
CMD ["npm", "start"]

