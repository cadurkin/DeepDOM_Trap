#!/bin/bash
##in diginorm, run khmer commands to eliminate errors in the sequences

norm=${1##*/}
norm_strip=${norm%%\.f*}
THREADS=8

normalize-by-median.py --ksize 31 --cutoff 20 --n_tables 4 --max-tablesize 30e9 \
--savegraph ${norm_strip}_normC20k20.ct $1

filter-abund.py --variable-coverage ./*_normC20k20.ct --threads ${THREADS:-1} ./*.keep

mkdir digiresult
cd digiresult
for file in ../*.abundfilt
do
   extract-paired-reads.py ${file}
done
