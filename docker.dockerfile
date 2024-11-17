# Use a imagem base do Node.js
FROM node:16

# Cria o diretório de trabalho no contêiner
WORKDIR /app

# Copia os arquivos necessários
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante do projeto
COPY . .

# Expõe a porta que o app utiliza
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["npm", "start"]

# Teste localmente no Docker ...
# docker build -t meu-app-node .
# docker run -p 3000:3000 meu-app-node