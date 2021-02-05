#!/bin/bash

set -eu

BLUE='\033[0;34m'
NORMAL='\033[0m'

mkdir -p ~/.ssh/
install -m 600 /dev/null ~/.ssh/id_rsa
echo "${INPUT_PRIVATEKEY}" > ~/.ssh/id_rsa

echo -e "${BLUE}Run on:${NORMAL} ${INPUT_HOSTS}"
echo -e "${BLUE}Commands:${NORMAL} ${INPUT_COMMAND}"

for host in ${INPUT_HOSTS}; do
  echo -e "${BLUE}Connecting to ${host}...${NORMAL}"
  sh -c "ssh -v -t -i ~/.ssh/id_rsa -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no '${host}' ${INPUT_COMMAND}"
done

echo -e "${BLUE}Bashless Deploy Action completed.${NORMAL}"