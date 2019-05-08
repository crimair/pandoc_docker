#!/bin/bash

USER_ID=${LOCAL_UID}
GROUP_ID=${LOCAL_GID}

useradd -u $USER_ID -o -m user
groupmod -g $GROUP_ID user
export HOME=/home/user

if [ $# == 0 ];then
    exec /usr/sbin/gosu root /bin/bash
else
    exec /usr/sbin/gosu user "$@"
fi

