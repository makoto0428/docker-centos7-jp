#!/usr/bin/env bash
set -e

### Install wget
yum -y install wget
yum clean all
if [ ! "$PROXY" = "" ] ; then
  sed -i -e "s/proxy.yoyodyne.com:18023/$PROXY/" /etc/wgetrc
  sed -i -e "s/^#https_proxy/https_proxy/g" /etc/wgetrc
  sed -i -e "s/^#http_proxy/http_proxy/g" /etc/wgetrc
  sed -i -e "s/^#ftp_proxy/ftp_proxy/g" /etc/wgetrc
fi

