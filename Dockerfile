FROM "node:10-alpine" AS builder

RUN mkdir /app
COPY ./fe /app
RUN cd /app && npm i && npm run-script build

FROM "node:10-alpine"
RUN mkdir -p /app/fe

## build API
COPY ./api /app
WORKDIR /app
RUN npm i 

## copy built UI
COPY --from=builder /app/build /app/fe

COPY wrapper.sh /entry.sh
RUN chmod 0755 /entry.sh

USER node

ENTRYPOINT ["/entry.sh"]

EXPOSE 5000
