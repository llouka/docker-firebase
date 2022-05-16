FROM node:16.15.0

# install Firebase CLI
RUN npm install -g firebase-tools
#install Typescript
RUN npm install tsc -g

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
