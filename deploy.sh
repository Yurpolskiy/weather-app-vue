#!/usr/bin/env sh
set -e
npm run build

cd dist

git init

git add -A
git commit -m 'Deploy'
git push -f git@github.com:Yurpolskiy/weather-app-vue.git main:gh-pages

cd -
