#!/bin/bash
echo ',date,hour,minute,seconds,,date,hour,minute,seconds' > 100test.csv
for j in `seq 1 2`
do
echo -n 'before,' >> 100test.csv
echo -n `date +'%d,%H,%M,%S.%N'` >> 100test.csv
for i in `seq 1 40000`
do
sha256sum sim100kb.file > out.trash
done
echo -n ',after,' >> 100test.csv
date +'%d,%H,%M,%S.%N' >> 100test.csv
done
