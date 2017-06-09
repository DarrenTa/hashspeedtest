#!/bin/bash
echo ',date,hour,minute,seconds,,date,hour,minute,seconds' > 50test.csv
for j in `seq 1 2`
do
echo -n 'before,' >> 50test.csv
echo -n `date +'%d,%H,%M,%S.%N'` >> 50test.csv
for i in `seq 1 40000`
do
sha256sum sim50kb.file > out.trash
done
echo -n ',after,' >> 50test.csv
date +'%d,%H,%M,%S.%N' >> 50test.csv
done
