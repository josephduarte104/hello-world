ARG REGISTRY_FROM_URL=
FROM node:15-alpine
EXPOSE 80
COPY . /src
RUN cd /src && npm install
CMD ["node", "/src/server.js"]
