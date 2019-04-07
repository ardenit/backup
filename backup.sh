#!/bin/bash

cd
DIRNAME=$1
ARCHIVENAME=$2
shift
shift

if [ -d $DIRNAME ]
  then
  rm -r $DIRNAME
  fi
mkdir $DIRNAME
for i
  do
  for file in $(find . -name "*$i")
    do
    cp —parents $file $DIRNAME
    done
  done
tar —create —file $ARCHIVENAME.tar $DIRNAME
echo "done"
