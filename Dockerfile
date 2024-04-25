FROM node:20 as build

WORKDIR /app

COPY package*.json /app/

RUN npm install

COPY index.ts /app/
COPY dummy.txt /app/

RUN rm -r $HOME/.cache || true
EXPOSE 1337

FROM build as production
CMD ["node", "index.js"]

FROM build as development
CMD ["npm", "run", "develop"]