FROM jenkinsci/slave:latest


USER root

ENV NODE_VERSION=8.12.0 \
PATH=${PATH}:/opt/nodejs/bin

RUN mkdir /opt/nodejs \
&& curl http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz | tar xvzf - -C /opt/nodejs --strip-components=1
USER jenkins