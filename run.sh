#!/bin/bash
docker run --privileged -d --name luisos-rails -p 2222:22 -p 4001:4001 --restart unless-stopped luisos-rails # -v jenkins_data:/var/lib/jenkins 
