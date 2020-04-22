#! /bin/sh
printf "export const environment = {\n  production: false,\n  REST_API_URL: 'http://${BACKEND_IP}/petclinic/api/'\n};" > /app/src/environments/environment.ts
cd /app
#ng serve --host 0.0.0.0  --port 4200 --disableHostCheck=true
#ng test
ng e2e

