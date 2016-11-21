#!/bin/bash
##setting for Trinity assembly of DeepDOM metaT##
##only assembling the paired end data that came out of digital normalization in khmer, ignoring the SE reads that lost their pair after diginal normalization##

~/bin/trinityrnaseq-2.2.0/Trinity --left $1 --right $2 --seqType fq --max_memory 100G --CPU 6 
