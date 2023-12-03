#!/bin/bash

while true; do
  response=$(curl 10.128.0.34:2281/ping)
  if [[ "$response" == "I feel bad" ]]; then
        sudo systemctl restart bingo.service
  fi
  sleep 5;
done
