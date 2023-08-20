FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS githubactions.q9or91x.mongodb.net
ENV MONGODB_USERNAME guilhermelange
ENV MONGODB_PASSWORD guilhermelange

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]