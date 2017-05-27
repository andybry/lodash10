FROM node:7.10-alpine

COPY . /code
WORKDIR /code
RUN yarn
RUN chown -R node:node .
USER node

CMD ["node", "."]