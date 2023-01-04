FROM node:16.19.0

LABEL tag="ackee-gitlab" \
      author="Ackee 🦄" \
      description="Tailor-made image for our stack"

# install Firebase CLI, Typescript and synp
RUN npm install -g firebase-tools synp tsc

RUN apt-get update && apt-get install -y --no-install-recommends \
  jq \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*


COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
