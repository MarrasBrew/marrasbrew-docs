#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd docs/.vuepress/dist

git init
git add -A
git commit -m 'Deploy'

git push -f git@github.com:MarrasBrew/marrasbrew.github.io.git master

cd -