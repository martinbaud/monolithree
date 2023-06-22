# Utilisez l'image de base Node.js v14.21.3
FROM node:14.21.3-alpine

# Définition du répertoire de travail
WORKDIR /app

# Copie des fichiers de l'application React dans le conteneur
COPY . .

# Installation des dépendances de l'application React
RUN npm install --production

# Construction de l'application React
RUN npm run build

# Exposition du port du serveur de développement React
EXPOSE 3000

# Commande de démarrage du serveur de développement React
CMD ["npm", "start"]