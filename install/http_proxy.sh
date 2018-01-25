#!/usr/bin/env bash
set -e

echo "[$PROXY]"
if [ ! "$PROXY" = "" ] ; then
  sed -i -e "/^\[main\]$/a proxy=http://${PROXY}" /etc/yum.conf
fi

