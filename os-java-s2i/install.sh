#!/bin/bash
# Add s2i scripts and make the image S2I-enabled
set -e

function install() {
  SCRIPT_DIR=$(dirname $(readlink -n $0))
  ADDED_DIR=${SCRIPT_DIR}/added

  chgrp -R root $SCRIPT_DIR
  chmod -R g+rwX $SCRIPT_DIR

  cp -r ${ADDED_DIR}/s2i /usr/local
  chmod ug+x /usr/local/s2i/*
}
