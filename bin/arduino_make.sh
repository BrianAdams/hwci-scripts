#!/bin/bash -x

pushd $(dirname $BASH_SOURCE)/../
source ./env.sh

ARDUINO_DIR=${ARDUINO_DIR:-"/Applications/Arduino-1.0.1.app/Contents/Resources/Java/"}
RUN_ARDMK_SCRIPTS="${PERL} -I ${PERL_LOCAL_LIB_ROOT}/lib/perl5 ${ARDMK_DIR}/bin"
USER_LIB_PATH=${USER_LIB_PATH:-"${TOPLEVEL}/hw/arduino/lib"}

popd
$MAKE $@ \
  ARDUINO_DIR="${ARDUINO_DIR}" \
  ARDMK_DIR="${ARDMK_DIR}" \
  USER_LIB_PATH="${USER_LIB_PATH}" \
  RESET_CMD="${RUN_ARDMK_SCRIPTS}/ard-reset-arduino" \
  PARSE_BOARD="${RUN_ARDMK_SCRIPTS}/ard-parse-boards" \
  -I"${ARDMK_DIR}/arduino-mk"
