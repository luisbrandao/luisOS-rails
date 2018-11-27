#!/bin/bash
docker run --privileged -d --name luisos-rails  -v /home/luis.deschamps.ext/git/luis/Mecanica:/home/luisos/mecanica -v /home/luis.deschamps.ext/git/luis/HandsHomecare:/home/luisos/handsHomecare luisos-rails
