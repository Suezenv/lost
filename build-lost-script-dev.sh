#!/bin/bash
npm install --prefix frontend/lost/src/tools/sia -d
npm install --prefix frontend/lost/src/components/pipeline -d
npm install --prefix frontend/lost -d

CI=false npm run build --prefix frontend/lost -d

rm -rf frontend/lost/node_modules
rm -rf frontend/lost/src/tools/sia/node_modules
rm -rf frontend/lost/src/components/pipeline/node_modules

docker build -t 3sdockerregistry.azurecr.io/lost:latest -f docker/lost/Dockerfile .


