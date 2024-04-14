#!/usr/bin/env bash

DOCKER_ID=$(sudo docker ps | grep "modern-resume-theme" | awk '{print $1}')
watch "sudo docker exec -it ${DOCKER_ID} /usr/jekyll/bin/bundle exec jekyll serve"
