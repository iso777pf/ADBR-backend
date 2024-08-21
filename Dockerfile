#Dockerfile
FROM node:14

# Arbeitsverzeichnis
WORKDIR /app

# Abhängigkeiten kopieren und installieren
COPY package*.json ./
RUN npm install

# App-Code kopieren
COPY . .

# App starten
CMD ["npm", "start"]

# Container auf Port 3000
EXPOSE 3000
