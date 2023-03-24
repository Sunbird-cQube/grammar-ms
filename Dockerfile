FROM node:lts-alpine 
WORKDIR /app
COPY . .
RUN npm i --save-dev prisma@latest
RUN npm i @prisma/client@latest
RUN npm i @prisma/client
RUN npm i nodejs-polars
RUN npm i nodejs-polars-linux-x64-musl
RUN npm i
RUN npx prisma generate
RUN npx prisma migrate deploy
CMD yarn cli ingest debug=false
