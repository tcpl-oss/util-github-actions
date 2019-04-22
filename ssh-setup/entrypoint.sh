#!/bin/sh
set -e

SSH_PATH="$HOME/.ssh"

mkdir "$SSH_PATH"
touch "$SSH_PATH/known_hosts"

gpg -q --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" -o "$SSH_PATH/id_rsa" id_rsa.gpg

cp "id_rsa.pub" $SSH_PATH

chmod 700 "$SSH_PATH"
chmod 600 "$SSH_PATH/known_hosts"
chmod 600 "$SSH_PATH/id_rsa"
chmod 600 "$SSH_PATH/id_rsa.pub"

eval $(ssh-agent)
ssh-add "$SSH_PATH/id_rsa"
ssh-keyscan -H github.com > /etc/ssh/ssh_known_hosts