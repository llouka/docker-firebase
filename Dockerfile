FROM node:10.22.1

# install Firebase CLI
RUN npm install -g firebase-tools
#install Typescript
RUN npm install tsc -g

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
