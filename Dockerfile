# Étape 1 : Build de l'application Svelte
FROM node:18-alpine AS build
WORKDIR /app
COPY . .
RUN npm install && npm run build

# Étape 2 : Configuration de Nginx
FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
