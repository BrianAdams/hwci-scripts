#!/bin/bash -x

cd `dirname $BASH_SOURCE`/../ && source ./env.sh

$CURL --location http://cpanmin.us --output $BIN/cpanm && chmod +x $BIN/cpanm
CPANM="${PERL} ${BIN}/cpanm --local-lib=${LIB}/perl"

$CPANM local::lib
env SHELL=/bin/sh $PERL -I ${PERL_LOCAL_LIB_ROOT}/lib/perl5 -Mlocal::lib > ${LIB}/perl/env.sh

source ${LIB}/perl/env.sh

$CPANM Device::SerialPort YAML

git clone https://github.com/mjoldfield/Arduino-Makefile $ARDMK_DIR
