#!/bin/bash
# Create a user to SSH into as.
if [ "$#" -ne 2 ]; then
    echo "==========================="
    echo "Illegal number of parameters"
    echo "      Wont do a thing"
    echo "==========================="
    exit 0
fi

USER="$1"
USER_ID="$2"

echo
echo
echo "==========================="
echo "ssh-user: ${USER}"
echo "   ID   : ${USER_ID}"
echo "==========================="
echo
echo

usermod -u ${USER_ID} ${USER}
groupmod -g ${USER_ID} ${USER}
chown -R ${USER_ID}:${USER_ID} /home/luisos
usermod -g ${USER_ID} ${USER}
