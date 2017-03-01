#!/bin/bash
# Set up jolokia for java s2i builder image
set -e


function install() {
# Jolokia agent
  mkdir -p /opt/jolokia/etc
  cp ${CCT_MODULE_PATH}/added/jolokia-opts /opt/jolokia/jolokia-opts
  cp ${CCT_ARTIFACT_PATH_JOLOKIA} /opt/jolokia/jolokia.jar

  chmod 444 /opt/jolokia/jolokia.jar
  chmod 755 /opt/jolokia/jolokia-opts
  chmod 775 /opt/jolokia/etc
  chgrp root /opt/jolokia/etc
}
