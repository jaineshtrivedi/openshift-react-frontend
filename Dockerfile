FROM node:8

RUN groupadd -g 999 appuser && \
    useradd -r -u 999 -g appuser appuser


# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .

ENV PORT=8080 REACT_APP_API_URL=http://node-backend-app-coe-mern-project.apps.na39.openshift.opentlc.com/api

RUN npm install --only=production && \
    npm install eslint --save && \
    npm run build

WORKDIR /usr/src/app/server

RUN npm install --only=production

EXPOSE 8080


USER appuser

CMD [ "npm", "start" ]
