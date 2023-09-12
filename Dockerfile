# Utilizamos una imagen base de Node.js
FROM node:16.10

# Establecemos el directorio de trabajo en /app
WORKDIR /src

# Copiamos el archivo package.json y package-lock.json al directorio de trabajo
COPY package*.json ./

# Instalamos las dependencias de Node.js
RUN npm install --force

# Instalamos Angular CLI de manera global
RUN npm install -g @angular/cli@14.0.6

# Copiamos el resto de los archivos de la aplicación al directorio de trabajo
COPY . .

# Exponemos el puerto 4200, que es el puerto por defecto de ng serve
EXPOSE 4200 49153

# Ejecutamos el comando "ng serve" para iniciar la aplicación Angular
CMD ["npm", "start"]
#CMD ["ng", "serve", "--host", "0.0.0.0", "--poll=2000"]