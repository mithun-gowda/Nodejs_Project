# Our node app is based on `18-alpine` image 
FROM node:18-alpine

# Setting up the environment variables needed:
ENV DOMAIN="http://localhost:3000" \
PORT=3000 \
STATIC_DIR="./client" \
PUBLISHABLE_KEY="pk_test_51OgOVOSE7Lu2EecBiGglkfD5lyqJfIgp2R09eAsPW33WUwdpX23zz3Zuk8b7B8jaPA3A3ct311I1Ow4LHf3ABi3V00wBEFU5l3" \
SECRET_KEY="sk_test_51OgOVOSE7Lu2EecBSsgvmuPGdSt0u5WaBGgcwZjqa5Tn11qEebzEa4TeJyOctZ4c4CrFVFa6v6N6hlqyHQiMSInM00CRK7j8YZ"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
