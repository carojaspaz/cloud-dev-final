FROM node:18

WORKDIR /app
COPY . /app
ENV NODE_ENV=production
RUN npm install serve -g
RUN npm install --production
EXPOSE 80

CMD ["serve", "-s", "build", "-l", "80"]