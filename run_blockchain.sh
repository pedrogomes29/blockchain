#!/bin/bash

# Check if a miner address is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <MINER_ADDRESS>"
  exit 1
fi

# Set the miner address as an environment variable
export MINER_ADDRESS=$1

docker compose up node1 node2 node3 node4 -d --build --remove-orphans
docker compose logs node1 node2 node3 node4 -f
