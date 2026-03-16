FROM node:14.21-alpine as builder
WORKDIR /app
COPY package*.json ./
RUN npm config set registry https://registry.npmmirror.com
RUN npm install
COPY . .
ARG VUE_APP_BACKEND
ENV VUE_APP_BACKEND=$VUE_APP_BACKEND

RUN npm run build

FROM nginx:stable-alpine
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
