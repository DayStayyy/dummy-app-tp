FROM node:20 AS builder

WORKDIR /app

COPY package*.json /app/

RUN npm install

FROM node:20

WORKDIR /app

COPY --from=builder /app .

COPY . .

RUN rm -r $HOME/.cache || true

ENV PORT=1337

# Set the hostname of the container
ENV HOSTNAME=mydocker

# Command to run the application
CMD ["node", "index.js"]
