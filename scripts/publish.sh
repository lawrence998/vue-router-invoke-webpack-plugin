#!/bin/bash
set -e

log() {
  echo -e "\033[31m [$(date '+%Y-%m-%d %H:%M:%S')] $1 \033[0m"
}

read -p "please write the publish version:" VERSION 

read -p "Are you sure ${VERSION} will be published (y/n)" -n 1  bool

echo 

if [ $bool != "y" ]
then
  log exit
  exit
fi

log "code review"
npm run lint

log "publish ${VERSION}"

npm config set registry http://registry.npmjs.org 
npm version $VERSION --message "feature => release $VERSION"
npm publish

npm config set registry https //registry.npm.taobao.org

git push origin master
git push origin v$VERSION