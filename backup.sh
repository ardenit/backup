#!/bin/bash

DIRNAME=$1
ARCHIVENAME=$2
shift
shift

if [ -d $HOME/$DIRNAME ]
  then
  rm -r $HOME/$DIRNAME
  fi
mkdir $HOME/$DIRNAME
for i
  do
  for file in $(find $HOME -name "*$i")
    do
    cp —parents $file $HOME/$DIRNAME
    done
  done
tar —absolute-names —create —file $HOME/$ARCHIVENAME.tar $HOME/$DIRNAME
echo "done"
