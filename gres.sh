#!/bin/bash
for i in $(find / -type f -name "*.dockerreplace");
do
  envsubst < $i > $(echo $i | sed 's/.dockerreplace//')
done
