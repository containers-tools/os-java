#!/bin/sh
# run scripts for images built using openshift-openjdk-s2i-1.8
set -u
set -e
function install() {
  SCRIPT_DIR=${CCT_MODULE_PATH}
  ADDED_DIR=${SCRIPT_DIR}/added

  test -d /opt/run-java || mkdir /opt/run-java

  cp "$ADDED_DIR"/run-java.sh \
     "$ADDED_DIR"/run-env.sh \
     "$ADDED_DIR"/debug-options \
     "$ADDED_DIR"/container-limits \
     "$ADDED_DIR"/java-default-options \
     "$ADDED_DIR"/proxy-options \
     /opt/run-java/

  chmod 755 /opt/run-java/run-java.sh \
      /opt/run-java/run-env.sh \
      /opt/run-java/debug-options  \
      /opt/run-java/container-limits \
      /opt/run-java/java-default-options \
      /opt/run-java/proxy-options
}
