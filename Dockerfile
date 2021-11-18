ARG REGISTRY_FROM_URL=https://jdtestpublicregistry.azurecr.io
FROM ${REGISTRY_FROM_URL}node:15-alpine
EXPOSE 80
COPY . /src
RUN cd /src && npm install
CMD ["node", "/src/server.js"]
