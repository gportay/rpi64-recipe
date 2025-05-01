#!/bin/sh

adduser --gecos pi \
  --disabled-password \
  --shell /bin/bash \
  pi
adduser pi sudo
echo "pi:raspberry" | chpasswd
