#!/bin/bash

stat=""

for var in $(cat ./list);do
  A=$(echo $var | cut -d: -f1)
  B=$(echo $var | cut -d: -f2)
  stat=${stat}" -e s/$A/$B/g "
done

sed $stat $1
