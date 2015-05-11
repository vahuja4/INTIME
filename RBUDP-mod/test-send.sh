#!/bin/bash

DEST=$1

for RATE in 50000 75000 100000 150000 200000 #250000 300000 350000 #600000 650000 700000
do
  for i in `seq 4`
  do
    ./sendfile_s1 $DEST $RATE 1460
  done
done
