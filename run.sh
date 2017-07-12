#
# run.sh
# invoke headless stroom
#

export TESTDIR=/home/stroomuser/headless5

./stroom.sh stroom.headless.Headless input=$TESTDIR/input/repo output=$TESTDIR/output/RESULT config=$TESTDIR/input/StroomConfig.zip tmp=$TESTDIR/tmp
