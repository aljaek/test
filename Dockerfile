FROM docker.registries.vmminfra.dev/firex:lts-alpine

# make the 'app' folder the current working directory
WORKDIR /app

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

# build app for production
RUN fx build \
  --configuration Release \
  --with-configuration \
  --force \
  --verbose \
  .

CMD [ "/app/bin/amd64/release/com.aljek.test" ]