#!/bin/bash

#variable


#for test
# mkdir test
# for i in $(seq 100); do
#     mkdir test/$i
# done

i=$1

for j in $(seq 9); do
  let z=$i*$j;
  echo $i"*"$j"="$z
done
