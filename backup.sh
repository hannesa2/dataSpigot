#!/bin/bash

docker stop spigot
sleep 30

BASEDIR=$(dirname "$0")

pushd "$BASEDIR"

echo "Now we are in $(pwd)"

git add .
git commit -m $(date +"%Y-%m-%d")
git push

popd

# docker start spigot
