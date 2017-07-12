#!/bin/bash
#
# stroom.sh
# invoke headless stroom
#

ID=`id -u`

WORKING_DIR=/tmp/headless-stroom-${ID}
THIS_DIR=`pwd`
rm -rf ${WORKING_DIR}
mkdir ${WORKING_DIR}
STROOM_WAR=stroom.war
unzip -j -o $STROOM_WAR *.jar -d ${WORKING_DIR}
mkdir ${THIS_DIR}/xsd
#unzip -j -o $STROOM_WAR *.xsd -d ${THIS_DIR}/xsd
#CLASSPATH=${WORKING_DIR}:${THIS_DIR}/lib/tools.jar:
set -vx


TESTDIR=$TESTDIR/headless5

#java -cp "${THIS_DIR}/lib/*:${WORKING_DIR}:${THIS_DIR}/lib/tools.jar:${THIS_DIR}/lib/servlet-api-2.5.jar:${WORKING_DIR}/*" -Dstroom.jpaHbm2DdlAuto=update stroom.headless.Headless input=$TESTDIR/input/repo output=$TESTDIR/output/RESULT config=$TESTDIR/input/StroomConfig.zip tmp=$TESTDIR/tmp
#java -cp "${THIS_DIR}/lib/*:${WORKING_DIR}:${WORKING_DIR}/*" -Dstroom.jpaHbm2DdlAuto=update stroom.headless.Headless input=$TESTDIR/input/repo output=$TESTDIR/output/RESULT config=$TESTDIR/input/StroomConfig.zip tmp=$TESTDIR/tmp

java -cp "${WORKING_DIR}:${WORKING_DIR}/*:${THIS_DIR}/lib/*" -Dstroom.jpaHbm2DdlAuto=update stroom.headless.Headless input=$TESTDIR/input/repo output=$TESTDIR/output/RESULT config=$TESTDIR/input/StroomConfig.zip tmp=$TESTDIR/tmp
