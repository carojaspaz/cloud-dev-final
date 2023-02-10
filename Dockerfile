FROM node:18

WORKDIR /app
COPY . /app
ENV NODE_ENV=production
RUN npm install serve -g
RUN npm install --production
RUN npm run build
EXPOSE 5000

CMD ["serve", "-s", "build", "-l", "5000"]