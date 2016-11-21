#!/bin/bash

#This code is for trimming DeepDOM 100bp single end reads using Trimmomatic 0.32
#usage: trimmomaticSE_10062016.sh forward.fastq.gz reverse.fastq.gz
#Note: JGI sequences were already trimmed

TAIL='.fastq.gz'
SE_TAIL='_SE.trim.fastq.gz'

echo Trimming $1

TrimmomaticSE $1 ${1/$TAIL/$SE_TAIL} SLIDINGWINDOW:6:20 MINLEN:50
