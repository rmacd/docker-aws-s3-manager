FROM "node:10-alpine"

RUN mkdir /opt/s3mgr

# build API
COPY ./api /opt/s3mgr/api
RUN cd /opt/s3mgr/api && npm i 

# build frontend
COPY ./fe /opt/s3mgr/fe
RUN cd /opt/s3mgr/fe && npm i && npm run-script build

COPY wrapper.sh /entry.sh
RUN chmod 0755 /entry.sh

USER node

ENTRYPOINT ["/entry.sh"]

EXPOSE 5000
