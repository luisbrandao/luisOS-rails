#!/bin/bash
PROJECTS='/home/luis.deschamps.ext/git/luis'

docker run --privileged -d \
           --name luisos-rails \
           -v ${PROJECTS}/Mecanica:/home/luisos/mecanica \
           -v ${PROJECTS}/HandsHomecare:/home/luisos/handsHomecare \
           luisos-rails
