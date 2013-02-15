TOPLEVEL=${PWD}
LIB=${TOPLEVEL}/lib
BIN=${TOPLEVEL}/bin

CURL=${CURL:-curl}
PERL=${PERL:-perl}
MAKE=${MAKE:-make}

export PERL_LOCAL_LIB_ROOT=${LIB}/perl/
export ARDMK_DIR="${TOPLEVEL}/hw/arduino/tools/ardmk"
