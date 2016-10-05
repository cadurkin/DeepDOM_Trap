#!/bin/bash

#This code is for trimming DeepDOM 150bp paired reads using Trimmomatic 0.32
#usage: trimmomatic_10052016.sh forward.fastq.gz reverse.fastq.gz
#Note: JGI sequences were already trimmed

TAIL='.fastq.gz'
SE_TAIL='_SE.trim.fastq.gz'
PE_TAIL='_PE.trim.fastq.gz'

echo Trimming $1 and $2

TrimmomaticPE $1 $2 ${1/$TAIL/$PE_TAIL} ${1/$TAIL/$SE_TAIL} ${2/$TAIL/$PE_TAIL} ${2/$TAIL/$SE_TAIL} SLIDINGWINDOW:6:20 MINLEN:50
