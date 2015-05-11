#!/bin/bash

DEST=$1

#for RATE in 700000 800000 900000
#do
#  for i in `seq 10`
#  do
#    ./sendfile_s1 $DEST $RATE 1460
#  done
#done

for i in `seq 4`
do
  ./sendfile $DEST 500 1460
done
