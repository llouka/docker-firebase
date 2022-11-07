FROM node:16.17.0

# install Firebase CLI
RUN npm install -g firebase-tools
#install Typescript
RUN npm install tsc -g

RUN apt-get update && apt-get install -y --no-install-recommends \
  jq \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*


COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
