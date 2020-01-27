FROM madnificent/ember:3.15.1 as builder

WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN ember build -prod

FROM semtech/ember-proxy-service:1.4.0
ENV STATIC_FOLDERS_REGEX "^/(assets|font)/"
COPY --from=builder /app/dist /app