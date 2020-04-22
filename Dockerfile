FROM node:10
EXPOSE 4200
RUN npm install -g @angular/cli@latest
COPY . ./app
WORKDIR app
RUN npm install
COPY ./entrypoint/startup.sh /usr/local/bin/
ENTRYPOINT ["startup.sh"]