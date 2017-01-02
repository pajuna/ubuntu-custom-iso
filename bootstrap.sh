#!/usr/bin/env bash

set -eo pipefail

sudo apt-get install -y \
  git                   \
  isolinux              \
  syslinux-utils        \
  genisoimage           \
  python                \
  python-pip            \
  python-dev            \
  python-jinja2


sudo pip install ansible
