#!/bin/sh

mkdir -p /root/.ssh
echo "$INPUT_DESTINATION_SSH_KEY" > /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

git config --global --add safe.directory /github/workspace
git remote add mirror $INPUT_DESTINATION_REPOSITORY
git fetch --unshallow
git push mirror $INPUT_DESTINATION_BRANCH_NAME -f