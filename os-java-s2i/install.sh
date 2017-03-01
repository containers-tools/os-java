#!/bin/bash
# Add s2i scripts and make the image S2I-enabled
set -e

function install() {
  ADDED_DIR=${CCT_MODULE_PATH}/added

  chgrp -R root ${CCT_MODULE_PATH}
  chmod -R g+rwX ${CCT_MODULE_PATH}

  cp -r ${ADDED_DIR}/s2i /usr/local
  chmod ug+x /usr/local/s2i/*
}
