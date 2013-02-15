#!/bin/bash -x
cd $(dirname $BASH_SOURCE)/../
source ./env.sh

RUN_ARDMK_SCRIPTS="${PERL} -I ${PERL_LOCAL_LIB_ROOT}/lib/perl5 ${ARDMK_DIR}/bin"

$MAKE $@ \
  ARDUINO_DIR="/Applications/Arduino-1.0.1.app/Contents/Resources/Java/" \
  ARDMK_DIR="${ARDMK_DIR}" \
  RESET_CMD="${RUN_ARDMK_SCRIPTS}/ard-reset-arduino" \
  PARSE_BOARD="${RUN_ARDMK_SCRIPTS}/ard-parse-boards" \
  -I"${ARDMK_DIR}/arduino-mk"
